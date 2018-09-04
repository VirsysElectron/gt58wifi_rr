# Inherit from common
include device/samsung/gte-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gt58wifi

# Asserts
TARGET_OTA_ASSERT_DEVICE := gt58wifi,gt58wifixx,SM-T350

ALLOW_MISSING_DEPENDENCIES :=true

# Audio
USE_CUSTOM_AUDIO_POLICY :=0

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_gt58wifi_eur_defconfig

#TARGET_USES_QCOM_WCNSS_QMI := true

#BOARD_KERNEL_BASE := 0x00000000
#BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x37 zcache.enabled=1 zcache.compressor=lz4
#BOARD_KERNEL_IMAGE_NAME := zImage
#BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_SEPARATED_DT := true
#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01e00000
#BOARD_CUSTOM_BOOTIMG := true
#BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
#TARGET_KERNEL_CONFIG := msm8916_sec_gt58wifi_eur_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/gt58wifi
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12138278912

#RIL
BOARD_PROVIDES_LIBRIL := false

# inherit from the proprietary version
#-include vendor/samsung/gt58wifi/BoardConfigVendor.mk
