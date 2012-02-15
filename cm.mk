$(call inherit-product, device/geeksphone/zero/full_zero.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=geeksphone_zero BUILD_ID=FRG83 BUILD_FINGERPRINT=qcom/msm7627_ffa/msm7627_ffa/7x27:2.2.1/FRG83/eng.SIMCOM.20110314.124514:user/test-keys PRIVATE_BUILD_DESC="msm7627_ffa-user 2.2.1 FRG83 eng.SIMCOM.20110314.124514 test-keys"

PRODUCT_NAME := cm_zero
PRODUCT_DEVICE := zero


