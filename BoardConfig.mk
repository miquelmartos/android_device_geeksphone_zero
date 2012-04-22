USE_CAMERA_STUB := true

TARGET_SPECIFIC_HEADER_PATH += device/geeksphone/zero/include

# Common flags
COMMON_GLOBAL_CFLAGS += -DFORCE_CPU_UPLOAD
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=59
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# GPU rendering
TARGET_FORCE_CPU_UPLOAD := true
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := false
TARGET_USES_SF_BYPASS := false
TARGET_HAVE_BYPASS := false
TARGET_USES_OVERLAY := true
TARGET_QCOM_HDMI_OUT := false
TARGET_GRALLOC_USES_ASHMEM := false
TARGET_USES_GENLOCK := true
BOARD_NO_RGBX_8888 := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_EGL_CFG := device/geeksphone/zero/misc/egl.cfg

# BOARD & CPU
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_BOARD_PLATFORM := msm7x27
ARCH_ARM_HAVE_VFP := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := zero
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_USES_ADRENO_200 := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Wlan
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_NAME     := "dhd"
WIFI_DRIVER_FW_STA_PATH     := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/vendor/firmware/fw_bcm4329.bin nvram_path=/system/etc/wifi/nvram.txt"
WIFI_FIRMWARE_LOADER        := wifi-loader
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT

# Kernel, cmdline
TARGET_PREBUILT_KERNEL := device/geeksphone/zero/kernel
BOARD_KERNEL_CMDLINE := mem=212M console=null androidboot.hardware=zero
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 0x00000800

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0c800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0c3a0000
BOARD_FLASH_BLOCK_SIZE := 131072

# Libaudio
TARGET_PROVIDES_LIBAUDIO := true

# Libril
BOARD_PROVIDES_LIBRIL := true

# Misc
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
HTTP := chrome
WITH_JIT := true
JS_ENGINE := v8

# to enable the GPS HAL
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := zero
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_USE_QCOM_PMEM := true

# FM Radio
BOARD_FM_DEVICE := bcm4325
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_USE_BROADCOM_FM_VOLUME_HACK := true

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL:=true
TARGET_PROXIMITY_SENSOR_LIMIT := 3

# Vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/geeksphone/zero/vibrator/vibrator.c

# Ums
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun0/file"

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/geeksphone/zero/recovery/recovery_ui.c

# inherit from the proprietary version
-include vendor/geeksphone/zero/BoardConfigVendor.mk
