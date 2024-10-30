### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

# set up working directory variables
[ "$AKHOME" ] || AKHOME=$PWD;
BOOTIMG=$AKHOME/boot.img;
BIN=$AKHOME/tools;
PATCH=$AKHOME/patch;
RAMDISK=$AKHOME/ramdisk;
SPLITIMG=$AKHOME/split_img;

### AnyKernel setup
eval $(cat $AKHOME/props | grep -v '\.')

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
