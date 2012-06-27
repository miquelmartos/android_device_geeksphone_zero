# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)
$(call inherit-product, device/geeksphone/zero/full_zero.mk)


PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=geeksphone_zero BUILD_ID=IMM76D BUILD_FINGERPRINT=qcom/msm7627_ffa/msm7627_ffa/7x27:4.0.4/IMM76D/eng.SIMCOM.20110314.124514:user/test-keys PRIVATE_BUILD_DESC="msm7627_ffa-user 4.0.4 IMM76D eng.SIMCOM.20110314.124514 test-keys"

PRODUCT_NAME := cm_zero
PRODUCT_DEVICE := zero
PRODUCT_RELEASE_NAME := Zero
