PRODUCT_LOCALES := en_US,en_GB,es_ES,ca_ES,fr_FR,ru_RU,it_IT,de_DE
PRODUCT_DEFAULT_LANGUAGE := es_ES

## HW
PRODUCT_PACKAGES := \
    hwprops \
    librs_jni \
    gps.zero \
    lights.zero \
    sensors.zero

## Audio
PRODUCT_PACKAGES += \
    audio.primary.zero \
    audio_policy.zero \
    audio.a2dp.default

## Video
PRODUCT_PACKAGES += \
    gralloc.msm7x27 \
    copybit.msm7x27 \
    camera.msm7x27

# Libs
PRODUCT_PACKAGES += \
    libopencorehw \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore \
    libOmxVidEnc \
    libOmxVenc \
    libOmxVdec \
    libgenlock \
    libQcomUI \
    libtilerenderer \
    libmemalloc \
    liboverlay \
    com.android.future.usb.accessory

## Apps
PRODUCT_PACKAGES += \
    Gallery2 \
    Stk \
    Camera \
    SoundRecorder \
    Usb

## Misc
PRODUCT_COPY_FILES += \
    device/geeksphone/zero/misc/init.zero.rc:root/init.zero.rc \
    device/geeksphone/zero/misc/init.zero.usb.rc:root/init.zero.usb.rc \
    device/geeksphone/zero/misc/ueventd.zero.rc:root/ueventd.zero.rc \
    device/geeksphone/zero/misc/320_480logo.rle:root/320_480logo.rle \
    device/geeksphone/zero/misc/320_480logo.rle:root/initlogo.rle \
    device/geeksphone/zero/misc/vold.fstab:system/etc/vold.fstab \
    device/geeksphone/zero/misc/gps.conf:system/etc/gps.conf \
    device/geeksphone/zero/misc/apns-conf.xml:system/etc/apns-conf.xml \
    device/geeksphone/zero/misc/zero.kl:system/usr/keylayout/zero.kl \
    device/geeksphone/zero/misc/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/geeksphone/zero/misc/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/geeksphone/zero/misc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

## Hardware properties
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Media profiles
PRODUCT_COPY_FILES += \
    device/geeksphone/zero/misc/media_profiles.xml:system/etc/media_profiles.xml

## Firmware
PRODUCT_COPY_FILES += \
    vendor/geeksphone/zero/proprietary/etc/sdio.bin:vendor/firmware/fw_bcm4329_apsta.bin \
    vendor/geeksphone/zero/proprietary/etc/sdio_cit.bin:vendor/firmware/fw_bcm4329.bin \
    vendor/geeksphone/zero/proprietary/etc/BCM4325D1_004.002.004.0230.0244.hcd:system/etc/BCM4325D1_004.002.004.0230.0244.hcd

## Modules
PRODUCT_COPY_FILES += \
    device/geeksphone/zero/modules/dhd.ko:system/lib/modules/dhd.ko \
    device/geeksphone/zero/modules/tun.ko:system/lib/modules/tun.ko

## Overlays
DEVICE_PACKAGE_OVERLAYS := device/geeksphone/zero/overlay

## Battery
PRODUCT_COPY_FILES += \
    device/geeksphone/zero/misc/battery_charging/charging_0.rle:system/charging_0.rle \
    device/geeksphone/zero/misc/battery_charging/charging_1.rle:system/charging_1.rle \
    device/geeksphone/zero/misc/battery_charging/charging_2.rle:system/charging_2.rle \
    device/geeksphone/zero/misc/battery_charging/charging_3.rle:system/charging_3.rle \
    device/geeksphone/zero/misc/battery_charging/charging_4.rle:system/charging_4.rle \
    device/geeksphone/zero/misc/battery_charging/charging_5.rle:system/charging_5.rle \
    device/geeksphone/zero/misc/battery_charging/charging_6.rle:system/charging_6.rle \
    device/geeksphone/zero/misc/battery_charging/battery_charging:system/bin/battery_charging

ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/geeksphone/zero/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel


