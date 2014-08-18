/*
 * RNG driver for Whirlygig GPL USB RNG
 * see http://warmcat.com/whirlygig
 *
 * (c) Copyright 2007-2010 Crash Barrier Ltd - Andy Green <andy@warmcat.com>
 * (c) Copyright 2010 UPLEX - Nils Goroll <nils.goroll@uplex.de>
 *
 * derived from
 *
 * RNG driver for Intel RNGs
 *
 * Copyright 2005 (c) MontaVista Software, Inc.
 *
 * with the majority of the code coming from:
 *
 * Hardware driver for the Intel/AMD/VIA Random Number Generators (RNG)
 * (c) Copyright 2003 Red Hat Inc <jgarzik@redhat.com>
 *
 * derived from
 *
 * Hardware driver for the AMD 768 Random Number Generator (RNG)
 * (c) Copyright 2001 Red Hat Inc <alan@redhat.com>
 *
 * derived from
 *
 * Hardware driver for Intel i810 Random Number Generator (RNG)
 * Copyright 2000,2001 Jeff Garzik <jgarzik@pobox.com>
 * Copyright 2000,2001 Philipp Rumpf <prumpf@mandrakesoft.com>
 *
 * This file is licensed under  the terms of the GNU General Public
 * License version 2. This program is licensed "as is" without any
 * warranty of any kind, whether express or implied.
 */

#include <asm/atomic.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/pci.h>
#include <linux/hw_random.h>
#include <linux/io.h>
#include <linux/usb.h>
#include <linux/list.h>
#include <linux/smp.h>
#include <linux/circ_buf.h>
#include <linux/wait.h>
#include <linux/debugfs.h>


/* constants */

/* 512-byte max endpoint on Whirlygig microcontroller */
#define RANDOM_PACKET_LEN_PWR_2 9
/* size of our driver whirlygig cache pool */
#define RANDOM_CACHE_SIZE_PWR_2 17
/* max number of URBs each instance can run */
#define MAX_URBS_PWR_2 4
#define WHIRLYGIG_VENDOR_ID	0x16C0	/* VID */
#define WHIRLYGIG_PRODUCT_ID	0x09E2	/* Whirlygig */
#define WG_ENDPOINT_VERSION 1
#define WG_ENDPOINT_RAND 3

/* calculated helpers */

#define RANDOM_PACKET_LEN (1 << RANDOM_PACKET_LEN_PWR_2)
#define RANDOM_CACHE_BYTES (1 << RANDOM_CACHE_SIZE_PWR_2)
#define RANDOM_CACHE_LOWWATER (RANDOM_CACHE_BYTES * 3 / 4)
#define RANDOM_CACHE_DROUGHT (RANDOM_PACKET_LEN * 16)
#define RANDOM_CACHE_MINSPACE (RANDOM_PACKET_LEN * 4)
#define RANDOM_CACHE_HIGHWATER (RANDOM_CACHE_BYTES - RANDOM_CACHE_MINSPACE)
#define MAX_URBS (1 << MAX_URBS_PWR_2)

static struct usb_device_id id_table[] = {
	{ USB_DEVICE(WHIRLYGIG_VENDOR_ID, WHIRLYGIG_PRODUCT_ID) },
	{ },
};
MODULE_DEVICE_TABLE(usb, id_table);

enum wg_stats {
	WG_STAT_NO_DATA,
	WG_STAT_NO_SPACE,
	WG_STAT_NO_SPACE_ZERO,
	WG_STAT_NO_SPACE_1,
	WG_STAT_NO_SPACE_2,
	WG_STAT_URBS_RESUBMITTED,
	WG_STAT_URBS_SUBMITTED,
	WG_STAT_CACHE_SIZE,

	/* always last */
	WG_STAT_COUNT_STATS
};

#if defined(CONFIG_DEBUG_FS)

/*
 * we don't yet consider these statistics critical enough to justify making them
 * atomic
 */

static const char *wg_stat_names[] = {
	[WG_STAT_NO_DATA]		= "no_data",
	[WG_STAT_NO_SPACE]		= "no_space",
	[WG_STAT_NO_SPACE_ZERO]		= "no_space_zero",
	[WG_STAT_NO_SPACE_1]		= "no_space_1",
	[WG_STAT_NO_SPACE_2]		= "no_space_2",
	[WG_STAT_URBS_RESUBMITTED]	= "urbs_resubmitted",
	[WG_STAT_URBS_SUBMITTED]	= "urbs_submitted",
	[WG_STAT_CACHE_SIZE]		= "cache_size",
};
#endif

/* just one of these no matter how many USB devices attach */

struct whirlygig {
	/* list of struct wg_instance per USB device attached */
	struct list_head	list_wg;
	spinlock_t		list_wg_lock;
	int			count_instances;

	atomic_t		urbs_in_flight;

	/*
	 * we cache random in a single cache[], all attached devices
	 * contribute to the same cache
	 */
	u8			cache[RANDOM_CACHE_BYTES];

	int			cache_head, cache_tail;
	spinlock_t		cache_lock; /* protects head */

	/* WQ for readers waiting for data */
	wait_queue_head_t	wait_data;

	/*
	 * when we add an instance, we need to rebalance over all instances, so
	 * urb_callback needs to stop reissuing URBS
	 *
	 * we then let the cache run low and re-request urbs all instances
	 */
	int			urb_reissue;

	struct dentry		*debugfs_parent;
#if defined(CONFIG_DEBUG_FS)
	u64			stats[WG_STAT_COUNT_STATS];
#endif
};

/* one of these instances created per USB device attached */

struct wg_instance {
	struct list_head	list_wg;
	struct whirlygig	*pwg; /* struct whirlygig parent */
	struct usb_device	*udev;
	struct urb		*urb[MAX_URBS];
	int			urb_inflight[MAX_URBS];
	u8			*payload[MAX_URBS];
	/* version buffer in probe must not be on stack, so place it here */
	u8			u8a[32];
};


/* smp_wmb: before incrementing the head, make sure data has been written */
#define WG_CACHE_INC_HEAD(pwg, ofs) {					 \
		smp_wmb();						 \
		pwg->cache_head = (pwg->cache_head + ofs) &		 \
					       (RANDOM_CACHE_BYTES - 1); \
	}

/* smp_mb: finish reading descriptor before incrementing tail */
#define WG_CACHE_INC_TAIL(pwg, ofs) {					  \
		smp_mb();						  \
		pwg->cache_tail = (pwg->cache_tail + ofs) &		  \
						(RANDOM_CACHE_BYTES - 1); \
	}

/* stats only bothered to be kept when DEBUG_FS configured */

static void
wg_increment_stat(struct whirlygig *pwg, enum wg_stats index, u64 num)
{
#if defined(CONFIG_DEBUG_FS)
	pwg->stats[index] += num;
#endif
}

static void
wg_set_stat(struct whirlygig *pwg, enum wg_stats index, u64 num)
{
#if defined(CONFIG_DEBUG_FS)
	pwg->stats[index] = num;
#endif
}

/*
 * A single byte-orientated ring buffer cache accepts random packets from all
 * attached devices.
 *
 * While at least RANDOM_CACHE_MINSPACE is free, URBs are set to re-submit
 * themselves in the completion routine.  When the ringbuffer is full enough,
 * the auto re-submit action is defeated and there is no traffic from the
 * whirlygig hardware.
 *
 * (It over-issues URBs somewhat to get the best bandwidth from the CPU on the
 * whirlygig device.  However, we only submit URBs at all when the random pool
 * is being drawn down; for busy SSL server situation it's a few dozen URBs
 * a second)
 *
 * When a new instance gets attached, the ringbuffer is emptied to
 * RANDOM_CACHE_DROUGHT and then re-filled again from all attached whirlygig
 * devices in a round-robin fashion.
 *
 * The ringbuffer is filled when the first device is attached, and then
 * replenished whenever it reaches RANDOM_CACHE_LOWWATER again.
 */

static void
urb_callback(struct urb *urb)
{
	struct wg_instance *pwgi = (struct wg_instance *)urb->context;
	struct whirlygig *pwg = pwgi->pwg;
	size_t len = urb->actual_length;
	unsigned long flags;
	int urb_index = -1;
	size_t budget;
	size_t todo;
	u8 *from;
	int urbn;
	int ret;

	/* find which URB index this is */
	for (urbn = 0; urbn < MAX_URBS; urbn++)
		if (urb == pwgi->urb[urbn])
			urb_index = urbn;

	BUG_ON(urb_index < 0);

	if (urb->status && urb->status != -ENOENT &&
			   urb->status != -ECONNRESET &&
			   urb->status != -ESHUTDOWN) {
		dev_err(&pwgi->udev->dev,
			"urb=%p write bulk status received: %d len=%d\n",
			pwgi->urb[urb_index], pwgi->urb[urb_index]->status,
								      (int)len);
		goto error;
	}

	if (len == 0) {
		/*
		 * CPU on Whirlygig completes endpoint payloads asynchronously
		 * some URBs come back with nothing while the CPU is blocked
		 * transferring the random from the CPLD.  Which ones is a
		 * function of host load and USB hub layout causing problems
		 * for attackers modelling the RNG.
		 */

		wg_increment_stat(pwg, WG_STAT_NO_DATA, 1);
		goto out;
	}

	/*
	 * We over-request because the sink for the random data may have further
	 * emptied it since we started requesting, in the case of a really
	 * heavy random user like the synthetic statistical tests.  The over-
	 * requests allow maximum overall throughput in that case.  If there's
	 * not enough space we discard the over-requested data (giving attackers
	 * another problem with modelling the RNG).
	 */
	if (!CIRC_SPACE(pwg->cache_head, pwg->cache_tail, RANDOM_CACHE_BYTES)) {
		wg_increment_stat(pwg, WG_STAT_NO_SPACE_ZERO, (u64)len);
		goto out;
	}

	spin_lock_irqsave(&pwg->cache_lock, flags);

	from = pwgi->payload[urb_index];
	budget = CIRC_SPACE_TO_END(pwg->cache_head, pwg->cache_tail,
							    RANDOM_CACHE_BYTES);
	todo = (len < budget) ? len : budget;

	if (todo) {
		memcpy(&pwg->cache[pwg->cache_head], from, todo);
		WG_CACHE_INC_HEAD(pwg, todo);
		from += todo;
		len -= todo;
	}

	if (len) {
		budget = CIRC_SPACE_TO_END(pwg->cache_head, pwg->cache_tail,
							    RANDOM_CACHE_BYTES);

		if (!budget) {
			wg_increment_stat(pwg, WG_STAT_NO_SPACE_1, (u64)len);
			goto out_unlock;
		}

		todo = (len < budget) ? len : budget;

		memcpy(&pwg->cache[pwg->cache_head], from, todo);
		WG_CACHE_INC_HEAD(pwg, todo);
		from += todo;
		len -= todo;
	}

	if (len) {
		wg_increment_stat(pwg, WG_STAT_NO_SPACE_2, (u64)len);
		goto out_unlock;
	}

out_unlock:
	spin_unlock_irqrestore(&pwg->cache_lock, flags);

	/*
	 * Only wake up readers if we've reached a minimal amount of data in the
	 * cache or if almost all URBs have finished their job (in which case we
	 * need the reader side to call whirlygig_full_cache to start more). The
	 * latter aspect is only a safety measure.
	 *
	 * not using a membar here because we've just left a spinlock which
	 * implies smp_mb() so our local cache should be fresh (enough)
	 */

	if ((CIRC_CNT(pwg->cache_head, pwg->cache_tail, RANDOM_CACHE_BYTES) >
							   RANDOM_CACHE_DROUGHT)
	    || (atomic_read(&pwg->urbs_in_flight) < 4))
		wake_up(&pwg->wait_data);

out:
	if (pwg->urb_reissue == 0)
		goto dont_reissue;

	/*
	 * dont reissue the urb if there is only minimal space left in the
	 * cache. Leaving room for four more urbs because more urbs might be
	 * finishing as we speak
	 */

	if (((CIRC_SPACE(pwg->cache_head, pwg->cache_tail, RANDOM_CACHE_BYTES) -
	      RANDOM_CACHE_MINSPACE) /
		     RANDOM_PACKET_LEN - atomic_read(&pwg->urbs_in_flight)) < 4)
		goto dont_reissue;

	/* kick off this URB again */

	usb_fill_bulk_urb(pwgi->urb[urb_index], pwgi->udev,
			  usb_rcvbulkpipe(pwgi->udev, WG_ENDPOINT_RAND),
			  pwgi->payload[urb_index], RANDOM_PACKET_LEN,
			  urb_callback, pwgi);
	pwgi->urb[urb_index]->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	ret = usb_submit_urb(urb, GFP_ATOMIC);
	if (ret) {
		dev_err(&pwgi->udev->dev,
			"urb restart failed, %s-%s/whirlygig, status %d",
			pwgi->udev->bus->bus_name, pwgi->udev->devpath, ret);
		goto error;
	}
	wg_increment_stat(pwg, WG_STAT_URBS_RESUBMITTED, 1);

	return;

error:
dont_reissue:

	pwgi->urb_inflight[urb_index] = 0;
	atomic_dec(&pwg->urbs_in_flight);
}

/*
 * request enough data to fill up the cache to the requested level - the rest of
 * it will get filled by URBs being kicked off again by urb_callback
 *
 * see note on locking in fill_cache_on_read()
 *
 * we would need read membars for the cache size and urbs_in_flight, but
 * approximate counts are OK:
 *
 * - if submitting too many URBs for the cache to hold them, we will simply
 *   throw away excess data
 *
 * - not submitting enough urbs will give inisignificantly lower thorughput
 */

static void
whirlygig_fill_cache(struct whirlygig *pwg, int watermark)
{
	struct wg_instance *pwgi;
	unsigned long flags;
	int ret;
	int cnt;
	static int urb_index;
	int todo;
	int loop = 0;
	int started = 0;

	/* short path */
	cnt = CIRC_CNT(pwg->cache_head, pwg->cache_tail, RANDOM_CACHE_BYTES);
	wg_set_stat(pwg, WG_STAT_CACHE_SIZE, (u64)cnt);

	if (cnt > watermark)
		return;

	todo = ((watermark - cnt) / RANDOM_PACKET_LEN) -
	    atomic_read(&pwg->urbs_in_flight) - 1;

	if (todo <= 0)
		return;

	spin_lock_irqsave(&pwg->list_wg_lock, flags);
	/* submit urbs round robin to each adapter */
	while ((todo > 0) && (loop++ < MAX_URBS)) {
		list_for_each_entry(pwgi, &pwg->list_wg, list_wg) {
			if (todo <= 0)
				break;
			if (pwgi->urb_inflight[urb_index])
				continue;

			/* prepare the URB and submit it */
			usb_fill_bulk_urb(pwgi->urb[urb_index], pwgi->udev,
			    usb_rcvbulkpipe(pwgi->udev, WG_ENDPOINT_RAND),
			    pwgi->payload[urb_index], RANDOM_PACKET_LEN,
			    urb_callback, pwgi);
			pwgi->urb[urb_index]->transfer_flags |=
			    URB_NO_TRANSFER_DMA_MAP;

			pwgi->urb_inflight[urb_index] = 1;

			ret = usb_submit_urb(pwgi->urb[urb_index], GFP_KERNEL);
			if (ret) {
				pwgi->urb_inflight[urb_index] = 0;

				dev_info(&pwgi->udev->dev, "URB submit %d\n",
				    ret);
				continue;
			}

			todo--;
			started++;
			wg_increment_stat(pwg, WG_STAT_URBS_SUBMITTED, 1);
		}
		urb_index = (urb_index + 1) & (MAX_URBS - 1);
	}

	atomic_add(started, &pwg->urbs_in_flight);
	/*
	 * smp_mb__after_atomic_inc() should not be needed because
	 * spin_unlock should impose a membar anyway
	 */
	spin_unlock_irqrestore(&pwg->list_wg_lock, flags);
}

/*
 * slink@uplex.de 2010-07-10:
 *
 * note on locking:
 * - the RNG framework serializes reader access with a lock
 * - urb_callback updates the head as it writes
 *
 * because read only update the tail and writes only update the head,
 * the worst thing which can happen is that both see smaller than
 * actual buffers of concurrent reads/writes occur
 */

static inline void
fill_cache_on_read(struct whirlygig *pwg, int size)
{
	int s;

	if (pwg->urb_reissue) {
		/*
		 * urbs should get restarted whenever they finish, so
		 * make sure we always have enough URBs in flight to
		 * keep the cache at a reasonable low water mark
		 * considering it may be being drained concurrently
		 */
		whirlygig_fill_cache(pwg, RANDOM_CACHE_LOWWATER);
		return;
	}

	s = CIRC_CNT(pwg->cache_head, pwg->cache_tail, RANDOM_CACHE_BYTES);
	/*
	 * re-issuing urbs has been disabled becuase another
	 * instance has been added. let the cache run low and
	 * then top it up
	 */
	if (s >= RANDOM_CACHE_DROUGHT && s >= size)
		return;

	pwg->urb_reissue = 1;
	whirlygig_fill_cache(pwg, RANDOM_CACHE_LOWWATER);
}


/* ONLY FOR BACKWARDS COMPAT */
static int
whirlygig_rng_data_present(struct hwrng *rng, int wait)
{
	struct whirlygig *pwg = (struct whirlygig *)rng->priv;
	int avail;
	int ret;

	if (!pwg)
		return 0;

	fill_cache_on_read(pwg, 4);

	if (wait) {
		ret = wait_event_interruptible(pwg->wait_data,
				((avail = CIRC_CNT_TO_END(pwg->cache_head,
				    pwg->cache_tail, RANDOM_CACHE_BYTES)) > 0));
		if (ret)
			return 0;
	} else
		avail = CIRC_CNT_TO_END(pwg->cache_head,
					   pwg->cache_tail, RANDOM_CACHE_BYTES);

	return avail;
}


static int
whirlygig_rng_data_read(struct hwrng *rng, u32 *data)
{
	struct whirlygig *pwg = (struct whirlygig *)rng->priv;
	u8 * dest = (u8 *)data;
	int ret = 0;
	int tail;

	if (!pwg)
		return 0;

	if (wait_event_interruptible(pwg->wait_data,
				     (CIRC_CNT(pwg->cache_head, pwg->cache_tail,
					 RANDOM_CACHE_BYTES) >= sizeof(*data))))
		return 0;

	tail = pwg->cache_tail;
	while (ret < 4) {
		dest[ret++] = pwg->cache[tail];
		tail = (tail + 1) & (RANDOM_CACHE_BYTES - 1);
	}
	WG_CACHE_INC_TAIL(pwg, 4);

	return ret;
}


/*
 * more efficient hwrng API variant reading larger blocks than four bytes
 */

static int
whirlygig_rng_read(struct hwrng *rng, void *data, size_t size, bool wait)
{
	struct whirlygig *pwg = (struct whirlygig *)rng->priv;
	size_t avail;
	size_t todo;
	int ret = 0;
	u8 *buffer = data;
	int interrupted;

	if (!pwg || !size)
		return 0;

	while (size) {

		fill_cache_on_read(pwg, size);

		/*
		 * wait for data, return if interrupted
		 */
		if (wait) {
			interrupted = wait_event_interruptible(pwg->wait_data,
				(avail = CIRC_CNT_TO_END(pwg->cache_head,
				     pwg->cache_tail, RANDOM_CACHE_BYTES) > 0));
			if (interrupted)
				return ret;
		} else {
			avail = CIRC_CNT_TO_END(pwg->cache_head,
					pwg->cache_tail, RANDOM_CACHE_BYTES);
			if (avail <= 0)
				return ret;
		}

		BUG_ON(avail <= 0);
		todo = size < avail ? size : avail;
		BUG_ON(!todo);

		memcpy(buffer, &pwg->cache[pwg->cache_tail], todo);
		WG_CACHE_INC_TAIL(pwg, todo);

		buffer += todo;
		ret += todo;
		size -= todo;
	}

	return ret;
}

static struct hwrng whirlygig_rng = {
	.name		= "whirlygig",
	.data_present	= whirlygig_rng_data_present,
	.data_read	= whirlygig_rng_data_read,
	.read		= whirlygig_rng_read,
};


static int
whirlygig_probe(struct usb_interface *interface,
		const struct usb_device_id *id)
{
	struct usb_device *udev = interface_to_usbdev(interface);
	struct wg_instance *pwgi;
	int ret = -ENOMEM;
	int len;
	int urb_index;
	struct whirlygig *pwg = (struct whirlygig *)whirlygig_rng.priv;
	unsigned long flags;

	/* create the instance */
	pwgi = kzalloc(sizeof(struct wg_instance), GFP_KERNEL);
	if (pwgi == NULL) {
		dev_err(&interface->dev, "Out of memory\n");
		goto bail1;
	}

	pwgi->pwg = pwg; /* set parent */
	pwgi->udev = usb_get_dev(udev);
	usb_set_intfdata(interface, pwgi); /* associate instance with pwgi */

	/* query firmware version */
	pwgi->u8a[0] = '\0'; /* fetch the firmware string */
	ret = usb_bulk_msg(udev, usb_rcvbulkpipe(udev, WG_ENDPOINT_VERSION),
						     pwgi->u8a, 32, &len, 1000);
	if (ret) {
		dev_err(&pwgi->udev->dev, "usb RX 2 ret %d %d %02X %02X\n",
			ret, len, pwgi->u8a[0], pwgi->u8a[1]);
		goto bail2;
	}
	pwgi->u8a[sizeof(pwgi->u8a) - 1] = '\0'; /* just in case */
	dev_info(&udev->dev, "Device firmware '%s'\n", (const char *)pwgi->u8a);

	/* set up URBs for bulk random */
	for (urb_index = 0; urb_index < MAX_URBS; urb_index++) {
		pwgi->urb_inflight[urb_index] = 0;

		pwgi->urb[urb_index] = usb_alloc_urb(0, GFP_KERNEL);
		if (!pwgi->urb[urb_index]) {
			dev_err(&pwgi->udev->dev, "could not alloc urb\n");
			goto bail2;
		}
		pwgi->payload[urb_index] =
			usb_alloc_coherent(pwgi->udev, RANDOM_PACKET_LEN,
			       GFP_KERNEL, &pwgi->urb[urb_index]->transfer_dma);
		if (!pwgi->payload[urb_index]) {
			dev_err(&pwgi->udev->dev, "could not alloc urb\n");
			goto bail3;
		}
	}

	/* add this probed device to the list of attached devices */

	spin_lock_irqsave(&pwg->list_wg_lock, flags);
	list_add(&pwgi->list_wg, &pwg->list_wg);
	pwg->count_instances++;
	spin_unlock_irqrestore(&pwg->list_wg_lock, flags);

	/*
	 * If we just added the first instance, fill up the cache.
	 * If we added another instance, let it run low
	 */
	if (pwg->count_instances == 1) {
		pwg->urb_reissue = 1;
		whirlygig_fill_cache(pwg, RANDOM_CACHE_LOWWATER);
	} else
		pwg->urb_reissue = 0;

	/* log it as attached okay */
	dev_info(&pwgi->udev->dev, "device added, %d device(s) present\n",
							  pwg->count_instances);

	return 0;

bail3:
	for (urb_index = 0; urb_index < MAX_URBS; urb_index++)
		if (pwgi->urb[urb_index]) {
			usb_kill_urb(pwgi->urb[urb_index]);
			usb_free_urb(pwgi->urb[urb_index]);
		}
bail2:
	usb_put_dev(udev);
	usb_set_intfdata(interface, NULL);
bail1:
	kfree(pwgi);
	whirlygig_rng.priv = 0;

	return ret;
}

static void
whirlygig_disconnect(struct usb_interface *interface)
{
	struct wg_instance *pwgi = usb_get_intfdata(interface);
	int urb_index;
	struct whirlygig *pwg;
	struct device *dev;

	if (!pwgi)
		return;
	pwg = pwgi->pwg;
	if (!pwg)
		return;

	pwg->urb_reissue = 0;

	dev = &pwgi->udev->dev;

	spin_lock(&pwg->list_wg_lock);
	list_del(&pwgi->list_wg);
	pwg->count_instances--;
	spin_unlock(&pwg->list_wg_lock);

	for (urb_index = 0; urb_index < MAX_URBS; urb_index++) {
		usb_kill_urb(pwgi->urb[urb_index]);
		usb_free_coherent(pwgi->udev, RANDOM_PACKET_LEN,
		    pwgi->payload[urb_index],
		    pwgi->urb[urb_index]->transfer_dma);
		usb_free_urb(pwgi->urb[urb_index]);
	}

	usb_set_intfdata(interface, NULL);
	usb_put_dev(pwgi->udev);
	kfree(pwgi);

	dev_info(dev, "device removed, %d device(s) present\n",
							  pwg->count_instances);
}


/* USB subsystem object */
static struct usb_driver whirlygig_driver = {
	.name =		"whirlygig_rng",
	.probe =	whirlygig_probe,
	.disconnect =	whirlygig_disconnect,
	.id_table =	id_table,
};


static int __init
mod_init(void)
{
	int err = -ENOMEM;
	struct whirlygig *pwg;
#if defined(CONFIG_DEBUG_FS)
	int n;
#endif

	/* create the instance */
	pwg = kzalloc(sizeof(struct whirlygig), GFP_KERNEL);
	if (pwg == NULL)
		goto bail;

	whirlygig_rng.priv = (long)pwg;

#if defined(CONFIG_DEBUG_FS)
	pwg->debugfs_parent = debugfs_create_dir("whirlygig_rng", NULL);
	for (n = 0; n < WG_STAT_COUNT_STATS; n++)
		debugfs_create_u64(wg_stat_names[n], 0400, pwg->debugfs_parent,
		&pwg->stats[n]);
#endif

	printk(KERN_INFO KBUILD_MODNAME ": Whirlygig RNG driver\n");

	spin_lock_init(&pwg->list_wg_lock);
	spin_lock_init(&pwg->cache_lock);

	init_waitqueue_head(&pwg->wait_data);

	INIT_LIST_HEAD(&pwg->list_wg);

	err = usb_register(&whirlygig_driver);
	if (err) {
		printk(KERN_ERR KBUILD_MODNAME ": usb_reg failed %d", err);
		goto bail1;
	}

	err = hwrng_register(&whirlygig_rng);
	if (err) {
		printk(KERN_ERR KBUILD_MODNAME ": RNG reg failed %d\n", err);
		goto bail2;
	}

	return 0;

bail2:
	usb_deregister(&whirlygig_driver);
bail1:
	kfree(pwg);
bail:

	return err;
}

static void __exit
mod_exit(void)
{
	struct whirlygig *pwg = (struct whirlygig *)whirlygig_rng.priv;

#if defined(CONFIG_DEBUG_FS)
	if (pwg)
		debugfs_remove_recursive(pwg->debugfs_parent);
#endif

	hwrng_unregister(&whirlygig_rng);
	usb_deregister(&whirlygig_driver);
	if (whirlygig_rng.priv)
		kfree((void *)whirlygig_rng.priv);
	whirlygig_rng.priv = 0;
}

module_init(mod_init);
module_exit(mod_exit);

MODULE_DESCRIPTION("Hardware RNG driver for Whirlygig");
MODULE_AUTHOR("Andy Green <andy@warmcat.com>, Nils Goroll <slink@uplex.de>");
MODULE_LICENSE("GPL");
