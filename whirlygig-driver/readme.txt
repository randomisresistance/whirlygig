Build DKMS Modules:

1. 
sudo cp -r ~/<whirlygig-driver-source-path> /usr/src/whirlygig-rng-1.00/

2.
sudo vim /usr/src/whirlygig-rng-1.00/dkms.conf

and add

PACKAGE_NAME="whirlygig-rng"
PACKAGE_VERSION="1.00"
BUILT_MODULE_NAME[0]="whirlygig-rng"
DEST_MODULE_LOCATION="/extra"
AUTOINSTALL="yes"

3.
sudo dkms add whirlygig-rng/1.00

Creating symlink /var/lib/dkms/whirlygig-rng/1.00/source ->
                 /usr/src/whirlygig-rng-1.00

DKMS: add completed.

4.
sudo dkms build whirlygig-rng/1.00

Kernel preparation unnecessary for this kernel.  Skipping...

Building module:
cleaning build area....
make KERNELRELEASE=3.2.0-60-generic -C
/lib/modules/3.2.0-60-generic/build
M=/var/lib/dkms/whirlygig-rng/1.00/build....
cleaning build area....

DKMS: build completed.

5.
dkms install whirlygig-rng/1.00

whirlygig-rng:
Running module version sanity check.
 - Original module
   - No original module exists within this kernel
 - Installation
   - Installing to /lib/modules/3.2.0-60-generic/extra/

depmod....

DKMS: install completed.

6. sudo modprobe whirlygig-rng

Done :)
