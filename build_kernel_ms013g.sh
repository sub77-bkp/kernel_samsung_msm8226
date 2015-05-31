#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=~/kernel/arm-eabi-4.8/bin/arm-eabi-
mkdir output

make -C $(pwd) O=output VARIANT_DEFCONFIG=msm8226-sec_ms013g_eur_defconfig msm8226-sec_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
