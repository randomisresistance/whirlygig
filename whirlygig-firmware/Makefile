IRAM := 256 # size of the internal ram
XRAM := 1024 # size of the external ram
CRAM := 15872 # size of the code ram

# these are the base locations for various memory types
aIDATA := 0x80 # the start of the indirectly addressable internal memory
aXRAM := 0x0000 # the start of the external ram
aCODE := 0x0000 # the start of the code space

CFLAGS=-mmcs51 --nooverlay --model-small


all:
	sdcc $(CFLAGS) -c main.c
	sdcc $(CFLAGS) -c usb.c
	sdcc $(CFLAGS) -c uart.c
	sdcc $(CFLAGS) -c whirlygig.c
	sdcc $(CFLAGS) --idata-loc $(aIDATA) --iram-size $(IRAM) --xram-loc $(aXRAM) --xram-size $(XRAM) --code-loc $(aCODE) --code-size $(CRAM)  --out-fmt-ihx -o whirlygig.ihx *.rel
	cat whirlygig.ihx | makebin -s 15000 > whirlygig.bin
#	if [ ! -z "`ps -Af | grep rngtest | grep -v grep`" ] ; then echo "STILL USING RANDOM!!" ; /bin/false ; fi
#	scp whirlygig.ihx root@192.168.0.54:/root
#	ssh root@192.168.0.54 "jektor -c /root/whirlygig.ihx"
#	scp whirlygig.bin root@10.7.0.1:/tmp
#	ssh root@10.7.0.1 "echo 1 > /sys/devices/virtual/c2port/c2port0/access ; echo 1 > /sys/devices/virtual/c2port/c2port0/reset ; sleep 1s ; cat /sys/devices/virtual/c2port/c2port0/rev_id ; echo 1 > /sys/devices/virtual/c2port/c2port0/flash_access ; echo 1 > /sys/devices/virtual/c2port/c2port0/flash_erase ; cat /tmp/whirlygig.bin > /sys/devices/virtual/c2port/c2port0/flash_data"

clean:
	rm -f *~ *.rel *.lst *.sym *.asm *.rst *.map *.mem *.lnk

