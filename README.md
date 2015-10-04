# chentz N910C LP Kernel
Kernel for N910C
Based on source code "N910CXXU1BOC5"

## How to Build
- get Toolchain
 - From Linaro, android-NDK and etc;
 - I use Linaro from this build http://forum.xda-developers.com/showthread.php?t=2098133
- Edit Makefile
 - edit "CROSS_COMPILE" to right toolchain path(You downloaded).
 - Ex)  `CROSS_COMPILE=/opt/toolchains/arm-eabi-4.8/bin/arm-eabi-                 // You have to check.`

- To compile:
 ```
 cd kernel
 make ARCH=arm exynos5433-base_defconfig   //Or other config of your choice
 make ARCH=arm
```

## Output files
- Kernel : `arch/arm/boot/zImage`
- module : `drivers/*/*.ko`

## How to Clean	
- Just to clean the generated files: `make clean`
- To clean all files: `make distclean`
