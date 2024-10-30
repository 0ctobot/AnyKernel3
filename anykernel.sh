### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
eval $(cat /tmp/anykernel/props | grep -v '\.')

### AnyKernel install

# boot install
BLOCK=boot;
IS_SLOT_DEVICE=1;
. tools/ak3-core.sh;
split_boot;
flash_boot;

# vendor_kernel_boot install
BLOCK=vendor_kernel_boot;
IS_SLOT_DEVICE=1;
reset_ak;
split_boot;
flash_boot;

## end install
