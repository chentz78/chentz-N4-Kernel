#!/bin/bash
export CROSS_COMPILE=/usr/lib/linaro/toolchain-a15/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/arm-cortex_a15-linux-gnueabihf-

BASE_DIR=/home/android/Dev/SM-N910C-EUR-LL
KBASE_NM=kernel

RAMFS_TMP="$BASE_DIR/$KBASE_NM/Ramdisk_tmp/tmp"
VER="\"-$KBASE_NM-v$1\""
export RAMFS_SOURCE="$BASE_DIR/$KBASE_NM/Ramdisk"

export KERNELDIR=`readlink -f .`
export PARENT_DIR=`readlink -f ..`
# export USE_SEC_FIPS_MODE=true

#BCONFIG=0googymax_exynos5433-trelte_defconfig
BCONFIG=exynos5433-base_defconfig

echo "Starting Config step..."
# export KCONFIG_NOTIMESTAMP=true
export ARCH=arm
export SUB_ARCH=arm

make ARCH=arm $BCONFIG || exit 1
