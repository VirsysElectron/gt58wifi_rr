# Inherit from common
$(call inherit-product, device/samsung/gte-common/rr.mk)

$(call inherit-product, device/samsung/gt58wifi/rr.mk)

#$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

#$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Must define platform variant before including any common things
#TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 768

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gt58wifi
PRODUCT_NAME := cm_gt58wifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T350
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-samsung
