$(call inherit-product, device/samsung/corsica/full_corsica.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=corsica \
    TARGET_DEVICE=corsica \
    BUILD_FINGERPRINT="samsung/corsicaxx/corsica:4.1.2/JZO54K/S5312XXAMK1:user/release-keys" \
    PRIVATE_BUILD_DESC="corsicaxx-user 4.1.2 JZO54K S5312XXAMK1 release-keys"

PRODUCT_NAME := cm_corsica
PRODUCT_DEVICE := corsica
