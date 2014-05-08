#!/bin/sh

echo ""
echo "Welcome to Alberto96 Kernel builder, please wait until work is completed"
echo ""

DATE_START=$(date +"%s")

GEAR_VER="GearKernel_CM9_TassVE_Testing"

echo ""
echo "Building tassve Kernel, ignore any compiling warning except errors ;)"
echo ""

make cyanogenmod_tassve_defconfig

make -j4

make -j4 modules

rm ramdisk/modules/*

find ../modules/. -name '*.ko' -exec cp -v {} ramdisk/modules/ \;

find . -name '*.ko' -exec cp -v {} ramdisk/modules/ \;

mv ramdisk/modules/bcm4330.ko ramdisk/modules/dhd.ko

echo ""
echo "Packing RamDisk..."
echo ""

cp ramdisk/tools/mkbootfs ramdisk/
cp ramdisk/tools/mkbootimg output/

cd ramdisk

chmod 777 mkbootfs
./mkbootfs tassve | lzma > ../output/ramdisk.gz

mkdir ../output
cd ../output

cp -rf ../../common/arch/arm/boot/zImage .

echo ""
echo "Building boot.img kernel image"
echo ""

chmod 777 mkbootimg
./mkbootimg --kernel zImage --ramdisk ramdisk.gz --base 0x81600000 --ramdiskaddr 0x82600000 -o boot.img

rm ../ramdisk/mkbootfs
rm mkbootimg
rm ramdisk.gz
rm zImage

echo ""
echo "Packing CWM Package..."
echo ""

mkdir ../ramdisk/cwm/system
mkdir ../ramdisk/cwm/system/lib
mkdir ../ramdisk/cwm/system/lib/modules
rm -rf ../ramdisk/modules/fsr.ko
rm -rf ../ramdisk/modules/fsr_stl.ko
rm -rf ../ramdisk/modules/j4fs.ko
rm -rf ../ramdisk/modules/rfs_fat.ko
rm -rf ../ramdisk/modules/sec_param.ko
rm -rf ../ramdisk/modules/rfs_glue.ko
cp ../ramdisk/modules/* ../ramdisk/cwm/system/lib/modules/
cp boot.img ../ramdisk/cwm/
cd ../ramdisk/cwm
zip -r `echo $GEAR_VER`.zip *
mv  `echo $GEAR_VER`.zip ../../output/

rm -rf system/lib/modules/*
rm -rf boot.img

echo ""
echo "Done! You can find the kernel in output folder (CWM and boot.img version)"
echo ""

DATE_END=$(date +"%s")
echo
DIFF=$(($DATE_END - $DATE_START))
echo "Build completed in $(($DIFF / 60)) minute(s) and $(($DIFF % 60)) seconds."
echo " "
