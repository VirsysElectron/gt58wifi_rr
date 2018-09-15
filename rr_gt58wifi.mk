#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gt58wifi/gt58wifi-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gte-common/device-common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)


# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 768

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gt58wifi
PRODUCT_NAME := rr_gt58wifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T350
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-samsung

LOCAL_PATH := device/samsung/gt58wifi

# System properties
-include $(LOCAL_PATH)/system.prop

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gt58wifi/overlay

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/gt58wifi/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/samsung/gt58wifi/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/samsung/gt58wifi/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    device/samsung/gt58wifi/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml \
    device/samsung/gt58wifi/audio/acdb/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
    device/samsung/gt58wifi/audio/acdb/General_cal.acdb:system/etc/General_cal.acdb \
    device/samsung/gt58wifi/audio/acdb/Global_cal.acdb:system/etc/Global_cal.acdb \
    device/samsung/gt58wifi/audio/acdb/Handset_cal.acdb:system/etc/Handset_cal.acdb \
    device/samsung/gt58wifi/audio/acdb/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
    device/samsung/gt58wifi/audio/acdb/Headset_cal.acdb:system/etc/Headset_cal.acdb \
    device/samsung/gt58wifi/audio/acdb/Speaker_cal.acdb:system/etc/Speaker_cal.acdb

# Ril
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only \
    ro.radio.noril=1
    
    PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=gt58wifi \
    PRODUCT_NAME=gt58wifixx
