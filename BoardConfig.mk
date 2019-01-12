# Inherit from common
include device/samsung/gte-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gt58wifi

# Asserts
TARGET_OTA_ASSERT_DEVICE := gt58wifi,gt58wifixx,SM-T350

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_gt58wifi_eur_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12138278912

# RIL
BOARD_PROVIDES_LIBRIL := false

# Audio
# Enable QCOM FM feature
TARGET_QCOM_NO_FM_FIRMWARE := true
AUDIO_FEATURE_ENABLED_FM := true

# Low Latency
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true

# SELinux
BOARD_SEPOLICY_DIRS += \
    $(LOCAL_PATH)/sepolicy

##################### ADDITIONS ######################################################

#ALLOW_MISSING_DEPENDENCIES :=true


# Use Snapdragon LLVM, if available
#TARGET_USE_SDCLANG := true


# Build system
#USE_NINJA := false
ANDROID_COMPILE_WITH_JACK := false

##################### ADDITIONS ######################################################

