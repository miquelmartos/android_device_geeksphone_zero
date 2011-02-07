USE_CAMERA_STUB:= false

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_WLAN_DEVICE := bcm4325
WIFI_DRIVER_FW_STA_PATH := "/system/etc/sdio.bin"
WIFI_DRIVER_MODULE_NAME     := "dhd"
WIFI_DRIVER_MODULE_PATH     := "/system/etc/dhd.ko"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/sdio_cit.bin nvram_path=/system/etc/nvram.txt"
#WPA_SUPPLICANT_VERSION      := VER_0_6_X
WIFI_FIRMWARE_LOADER        := wifi-loader

BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
BOARD_USE_FROYO_LIBCAMERA := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_USE_CAF_LIBCAMERA := true


# inherit from the proprietary version
-include vendor/geeksphone/zero/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := zero

TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

BOARD_KERNEL_CMDLINE := mem=212M console=null androidboot.hardware=qcom g_android.product_id=0x9018
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 0x00000800

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0c800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0c3a0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/geeksphone/zero/kernel

BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/geeksphone/zero/recovery_ui.c

BOARD_NO_RGBX_8888 := true

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

JS_ENGINE := v8

TARGET_PROVIDES_LIBAUDIO := true
#TARGET_PROVIDES_LIBRIL := true

BOARD_USES_GPSSHIM := true
BOARD_GPS_LIBRARIES := libloc libloc-rpc

TARGET_USES_OLD_LIBSENSORS_HAL:=true

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_USE_BROADCOM_FM_VOLUME_HACK := true
