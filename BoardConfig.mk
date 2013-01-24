# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# throughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/u8650/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/huawei/u8650/include

# ARMv6-compatible processor rev 5 (v6l)
TARGET_BOARD_PLATFORM := msm7x27
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOOTLOADER_BOARD_NAME := u8650
TARGET_OTA_ASSERT_DEVICE := u8650,sonic,U8650

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

#Fm radio
BOARD_HAVE_FM_RADIO := true
BOARD_FM_DEVICE := bcm4329
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# QCOM
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8650

# Browser
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome
TARGET_WEBKIT_USE_MORE_MEMORY := true

# Webkit
ENABLE_WEBGL := true

#RIL
BOARD_PROVIDES_LIBRIL := true

# USB mass storage
BOARD_DATA_DEVICE := /dev/block/mtdblock6  
BOARD_DATA_FILESYSTEM := auto  	
BOARD_DATA_FILESYSTEM_OPTIONS := rw	
BOARD_SYSTEM_DEVICE := /dev/block/mtdblock5
BOARD_SYSTEM_FILESYSTEM := auto
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_CACHE_DEVICE := /dev/block/mtdblock4
BOARD_CACHE_FILESYSTEM := auto
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
#BOARD_HAS_SDCARD_INTERNAL := true
#BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/vold/179:1
#BOARD_SDEXT_DEVICE := /dev/block/vold/179:2
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 2

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true
BOARD_VENDOR_USE_AKMD := akm8973

# ICS Stuff 
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_USE_LEGACY_TRACKPAD := true

# Bootanimation Optimization
TARGET_BOOTANIMATION_USE_RGB565 := true
TARGET_BOOTANIMATION_PRELOAD := false
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Audio
BOARD_PROVIDES_LIBAUDIO := true

# RIL
BOARD_PROVIDES_LIBRIL := true

# Graphics
BOARD_EGL_CFG := device/huawei/u8650/prebuilt/lib/egl/egl.cfg
BOARD_USE_FROYO_LIBCAMERA := true
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
TARGET_FORCE_CPU_UPLOAD := true
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT -DICS_CAMERA_BLOB -DQCOM_NO_SECURE_PLAYBACK -DSUPER_SMALL
BOARD_USES_HWCOMPOSER := false
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_DISABLE_ARM_PIE := true
BOARD_HAS_LIMITED_EGL := true
#TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

# Allow fallback to ashmem
TARGET_GRALLOC_USES_ASHMEM := true

TARGET_USES_GENLOCK := false
TARGET_USES_C2D_COMPOSITION := false
TARGET_HAVE_BYPASS := false

COMMON_GLOBAL_CFLAGS += -DNO_RGBX_8888 -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_EGL_PIXEL_FORMAT_YV12 -DMISSING_GRALLOC_BUFFERS -DUNABLE_TO_DEQUEUE
BOARD_NO_RGBX_8888 := true

# WiFI
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE                := bcm4329
WIFI_BAND                        := 802_11_ABG
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/firmware.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/firmware_apsta.bin"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/firmware.bin nvram_path=/system/etc/nvram.txt"
WIFI_DRIVER_MODULE_NAME          := "dhd"

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8650/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"

# Kernel
TARGET_KERNEL_SOURCE := kernel/huawei/u8650
TARGET_KERNEL_CONFIG := u8650_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
#FULL_KERNEL_BUILD := false
#TARGET_PREBUILT_KERNEL := device/huawei/u8650/prebuilt/kernel
BOARD_KERNEL_BASE := 0x10200000
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei
BOARD_KERNEL_PAGESIZE := 2048

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00140000 00020000 "misc"
# mtd3: 00060000 00020000 "splash"
# mtd4: 0aa00000 00020000 "system"
# mtd5: 05d00000 00020000 "cache"
# mtd6: 0a6a0000 00020000 "userdata"
# mtd7: 01400000 00020000 "cust"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0ba00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a0a0000
BOARD_FLASH_BLOCK_SIZE := 131072
