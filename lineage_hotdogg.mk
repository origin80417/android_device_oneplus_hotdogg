#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdogg device
$(call inherit-product, device/oneplus/hotdogg/device.mk)

# Inherit from Oneplus Camera
$(call inherit-product, vendor/oneplus/apps/hotdogg/config.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_SYSTEM_NAME := OnePlus7TProNR
PRODUCT_SYSTEM_DEVICE := OnePlus7TProNR

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_hotdogg
PRODUCT_DEVICE := hotdogg
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := HD1925
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7TProNR/OnePlus7TProNR:11/RKQ1.201022.002/2108021431:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7TProNR \
    TARGET_PRODUCT=OnePlus7TProNR \
    PRIVATE_BUILD_DESC="OnePlus7TProNR-user 11 RKQ1.201022.002 2108021431 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
