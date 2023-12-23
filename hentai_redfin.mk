# Inherit some common stuff.
$(call inherit-product, vendor/hentai/build/product/hentai_product.mk)

# Inherit some common hentaiOS stuff.
$(call inherit-product, vendor/hentai/config/common_telephony.mk)

# Device specific overlay
DEVICE_PACKAGE_OVERLAYS += device/google/redfin/overlay-calyx

# Inherit device configuration
TARGET_SUPPORTS_QUICK_TAP := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
$(call inherit-product, device/google/redfin/device-calyx.mk)
$(call inherit-product, device/google/redbull/device-calyx.mk)
$(call inherit-product, device/google/redfin/aosp_redfin.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := hentai_redfin
PRODUCT_MODEL := Pixel 5
PRODUCT_BRAND := google

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/redfin/redfin-vendor.mk)
