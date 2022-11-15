#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from NX659J device
$(call inherit-product, device/nubia/NX659J/device.mk)

PRODUCT_DEVICE := NX659J
PRODUCT_NAME := omni_NX659J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX659J
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := android-zte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX659J-UN-user 11 RKQ1.200826.002 nubia.20221012.201513 release-keys"

BUILD_FINGERPRINT := nubia/NX659J-UN/NX659J-UN:11/RKQ1.200826.002/nubia.20221012.201513:user/release-keys
