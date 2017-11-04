$(call inherit-product, device/motorola/otus/full_otus.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/dot/config/common_full_phone.mk))

## Device identifier. This must come after all inclusions
PRODUCT_NAME := dot_otus
PRODUCT_RELEASE_NAME := MOTO E (2nd Gen) 3G
