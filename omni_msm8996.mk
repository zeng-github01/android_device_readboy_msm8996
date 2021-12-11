#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from msm8996 device
$(call inherit-product, device/readboy/msm8996/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := msm8996
PRODUCT_NAME := omni_msm8996
PRODUCT_BRAND := Android
PRODUCT_MODEL := Readboy_C20
PRODUCT_MANUFACTURER := readboy

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT="readboy/msm8996/msm8996:7.1.2/N2G47H/20200911:user/dev-keys"
