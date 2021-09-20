# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=SM-F711B by twistedumbrella
do.devicecheck=0
do.modules=1
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
supported.versions=11
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;


## AnyKernel file attributes

# set permissions/ownership for included ramdisk files
set_perm_recursive 0 0 750 750 $ramdisk/*;


## AnyKernel boot install
dump_boot;

write_boot;
## end boot install


# shell variables
block=/dev/block/bootdevice/by-name/vendor_boot;
is_slot_device=0;
ramdisk_compression=auto;

# reset for vendor_boot patching
reset_ak;


## AnyKernel vendor_boot install
split_boot;

flash_boot;
## end vendor_boot install

