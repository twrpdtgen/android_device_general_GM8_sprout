#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from GM8_sprout device
$(call inherit-product, device/general/GM8_sprout/device.mk)

PRODUCT_DEVICE := GM8_sprout
PRODUCT_NAME := omni_GM8_sprout
PRODUCT_BRAND := GM
PRODUCT_MODEL := GM 8
PRODUCT_MANUFACTURER := general

PRODUCT_GMS_CLIENTID_BASE := android-a1-gm-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8937_64-user 9 OPM1.171019.011 eng.scm.20210302.164620 release-keys"

BUILD_FINGERPRINT := GM/GM8/GM8_sprout:9/OPM1.171019.011/28:user/release-keys
