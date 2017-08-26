$(call inherit-product, device/motorola/otus/full_otus.mk)

# Inherit some common DOSP stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Build Type
EXTENDED_BUILD_TYPE=EXPERIMENTAL


## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_otus
PRODUCT_RELEASE_NAME := MOTO E 3G
