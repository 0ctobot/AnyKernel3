### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=ExampleKernel by osm0sis @ xda-developers
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=maguro
device.name2=toro
device.name3=toroplus
device.name4=tuna
device.name5=
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

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
