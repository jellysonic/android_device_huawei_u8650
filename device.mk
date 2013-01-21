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

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Discard inherited values and use our own instead.
PRODUCT_NAME := huawei_u8650
PRODUCT_DEVICE := u8650
PRODUCT_MODEL := Huawei u8650

# Graphics 
PRODUCT_PACKAGES += \
    gralloc.msm7x27 \
    copybit.msm7x27 \
    hwcomposer.msm7x27

# Audio
PRODUCT_PACKAGES += \
    audio.primary.u8650 \
    audio_policy.u8650 \
    audio.a2dp.default \
    libaudioutils

# Zram
PRODUCT_PACKAGES += \
    hwprops \
    rzscontrol

# Video decoding
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

# Camera
PRODUCT_PACKAGES += \
        camera.msm7x27

# Other
PRODUCT_PACKAGES += \
    lights.u8650 \
    librpc \
    gps.u8650

# Other
PRODUCT_PACKAGES += \
    dexpreopt

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni


# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory 

# Hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Vold config
PRODUCT_COPY_FILES += \
    device/huawei/u8650/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/u8650/prebuilt/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/huawei/u8650/prebuilt/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/huawei/u8650/prebuilt/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/huawei/u8650/prebuilt/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
   device/huawei/u8650/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/u8650/prebuilt/init.huawei.rc:root/init.huawei.rc \
    device/huawei/u8650/prebuilt/ueventd.huawei.rc:root/ueventd.huawei.rc \
    device/huawei/u8650/prebuilt/init.rc:root/init.rc \
  device/huawei/u8650/prebuilt/init.huawei.usb.rc:root/init.huawei.usb.rc
# Init files
#PRODUCT_COPY_FILES += \
 #       device/huawei/u8650/prebuilt/root/init:root/init \
  #      device/huawei/u8650/prebuilt/root/init.huawei.rc:root/init.huawei.rc \
   #     device/huawei/u8650/prebuilt/root/init.rc:root/init.rc \
    #    device/huawei/u8650/prebuilt/root/ueventd.rc:root/ueventd.rc

# Wi-Fi releated
PRODUCT_COPY_FILES += \
    device/huawei/u8650/prebuilt/etc/nvram.txt:system/etc/nvram.txt \
    device/huawei/u8650/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8650/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/huawei/u8650/prebuilt/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
    device/huawei/u8650/prebuilt/etc/firmware.bin:system/etc/firmware.bin \
    device/huawei/u8650/prebuilt/etc/firmware_apsta.bin:system/etc/firmware_apsta.bin \
    
# Audio
PRODUCT_COPY_FILES += \
    device/huawei/u8650/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/huawei/u8650/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/u8650/prebuilt/etc/start_usb0.sh:system/etc/start_usb0.sh
# ksgl
PRODUCT_COPY_FILES += \
    device/huawei/u8650/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/huawei/u8650/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

PRODUCT_COPY_FILES += \
    device/huawei/u8650/prebuilt/bin/vold:system/bin/vold \
    device/huawei/u8650/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv

# Kernel modules
#PRODUCT_COPY_FILES += \
 #   device/huawei/u8650/prebuilt/lib/modules/zram.ko:system/lib/modules/zram.ko

# Ensure that /cache is never used for deodexing
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    device/huawei/u8650/prebuilt/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh 

# Touchscreen
PRODUCT_COPY_FILES += \
    device/huawei/u8650/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/u8650/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/huawei/u8650/prebuilt/usr/idc/cypress-ts-innolux_Ver04.idc:system/usr/idc/cypress-ts-innolux_Ver04.idc \
    device/huawei/u8650/prebuilt/usr/idc/melfas-touchscreen.Ver23.idc:system/usr/idc/melfas-touchscreen.Ver23.idc \
    device/huawei/u8650/prebuilt/usr/idc/melfas-touchscreen_ver23.idc:system/usr/idc/melfas-touchscreen_ver23.idc \
    device/huawei/u8650/prebuilt/usr/idc/melfas-touchscreen_Ver23.idc:system/usr/idc/melfas-touchscreen_Ver23.idc \
    device/huawei/u8650/prebuilt/usr/idc/melfas-touchscreen.idc:system/usr/idc/melfas-touchscreen.idc \
    device/huawei/u8650/prebuilt/usr/idc/7k_handset.idc:system/usr/idc/7k_handset.idc \
    device/huawei/u8650/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/huawei/u8650/prebuilt/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/huawei/u8650/prebuilt/usr/idc/kp_test_input.idc:system/usr/idc/kp_test_input.idc \
    device/huawei/u8650/prebuilt/usr/idc/surf_keypad.idc:system/usr/idc/surf_keypad.idc \
    device/huawei/u8650/prebuilt/usr/idc/touchscreen-keypad.idc:system/usr/idc/touchscreen-keypad.idc \
    device/huawei/u8650/prebuilt/usr/idc/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc \
    device/huawei/u8650/prebuilt/usr/idc/ts_test_input.idc:system/usr/idc/ts_test_input.idc \
    device/huawei/u8650/prebuilt/usr/idc/sensors.idc:system/usr/idc/sensors.idc \
    device/huawei/u8650/prebuilt/usr/keylayout/synaptics.kl:system/usr/keylayout/synaptics.kl \
    device/huawei/u8650/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/huawei/u8650/prebuilt/usr/keylayout/cypress-ts-innolux_Ver04.kl:system/usr/keylayout/cypress-ts-innolux_Ver04.kl \
    device/huawei/u8650/prebuilt/usr/keylayout/melfas-touchscreen.Ver23.kl:system/usr/keylayout/melfas-touchscreen.Ver23.kl \
    device/huawei/u8650/prebuilt/usr/keylayout/melfas-touchscreen_ver23.kl:system/usr/keylayout/melfas-touchscreen_ver23.kl \
    device/huawei/u8650/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

PRODUCT_LOCALES += mdpi
