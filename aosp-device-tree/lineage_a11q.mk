#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a11q device
$(call inherit-product, device/samsung/a11q/device.mk)

PRODUCT_DEVICE := a11q
PRODUCT_NAME := lineage_a11q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A115F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a11qnsxx-user 12 SP1A.210812.016 A115FXXS6CWK2 release-keys"

BUILD_FINGERPRINT := samsung/a11qnsxx/a11q:12/SP1A.210812.016/A115FXXS6CWK2:user/release-keys
