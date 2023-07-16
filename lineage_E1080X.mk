#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from E1080X device
$(call inherit-product, device/lenovo/E1080X/device.mk)

PRODUCT_DEVICE := E1080X
PRODUCT_NAME := lineage_E1080X
PRODUCT_BRAND := MEDION
PRODUCT_MODEL := LIFETAB E1080X
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovogroup.rvox

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_medion_j1018d-user 11 RP1A.200720.011 mp1V8402 release-keys"

BUILD_FINGERPRINT := MEDION/E1080X_EEA/E1080X:11/RP1A.200720.011/1659344263:user/release-keys
