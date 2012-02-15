PRODUCT_LOCALES := en_US,en_GB,es_ES,ca_ES,fr_FR,ru_RU,it_IT,de_DE
PRODUCT_DEFAULT_LANGUAGE := es_ES

PRODUCT_PACKAGES := \
    hwprops \
    librs_jni \
    gps.zero \
    gralloc.msm7x27 \
    copybit.msm7x27 \
    lights.zero \
    sensors.zero \
    audio.primary.msm7x27 \
    audio_policy.msm7x27 \
    audio.primary.zero \
    audio_policy.zero \
    audio.a2dp.default \
    hwcomposer.msm7x27 \
    libaudioutils \
    camera.msm7x27 \
    libcamera \
    libOmxCore \
    Gallery2

PRODUCT_COPY_FILES += \
    device/geeksphone/zero/init.zero.rc:root/init.zero.rc \
    device/geeksphone/zero/init.zero.usb.rc:root/init.zero.usb.rc \
    device/geeksphone/zero/ueventd.zero.rc:root/ueventd.zero.rc \
    device/geeksphone/zero/320_480logo.rle:root/320_480logo.rle \
    device/geeksphone/zero/320_480logo.rle:root/initlogo.rle \
    device/geeksphone/zero/vold.fstab:system/etc/vold.fstab \
    device/geeksphone/zero/gps.conf:system/etc/gps.conf \
    device/geeksphone/zero/apns-conf.xml:system/etc/apns-conf.xml \
    device/geeksphone/zero/zero.kl:system/usr/keylayout/zero.kl

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

PRODUCT_COPY_FILES += \
    device/geeksphone/zero/media_profiles.xml:system/etc/media_profiles.xml

# Firmware
PRODUCT_COPY_FILES += \
    vendor/geeksphone/zero/proprietary/etc/sdio.bin:system/etc/firmware/fw_bcm4329_apsta.bin \
    vendor/geeksphone/zero/proprietary/etc/sdio_cit.bin:system/etc/firmware/fw_bcm4329.bin \
    vendor/geeksphone/zero/proprietary/etc/BCM4325D1_004.002.004.0230.0244.hcd:system/etc/BCM4325D1_004.002.004.0230.0244.hcd

## Modules
PRODUCT_COPY_FILES += \
    device/geeksphone/zero/modules/dhd.ko:system/lib/modules/dhd.ko \
    device/geeksphone/zero/modules/tun.ko:system/lib/modules/tun.ko

ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/geeksphone/zero/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/geeksphone/zero/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/geeksphone/zero/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/geeksphone/zero/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc


PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-1.so \
    rild.libargs=-d /dev/smd0 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.ril.hsxpa=2 \
    ro.ril.gprsclass=10 \
    ro.telephony.ril.v3=icccardstatus,datacall,signalstrength,facilitylock \
    ro.telephony.default_network=0 \
    ro.telephony.call_ring.multiple=false

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1 \
    ro.opengles.version=131072 \
    persist.sys.strictmode.disable=true \
    persist.sys.usb.config=mass_storage \
    sys.usb.config=mass_storage \
    persist.service.adb.enable=1

