#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# Release name
PRODUCT_RELEASE_NAME := Infinix Infinix X680D
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Infinix-X680D device
$(call inherit-product, device/infinix/Infinix_X680D/device.mk)

PRODUCT_DEVICE := Infinix_X680D
PRODUCT_NAME := omni_Infinix_X680D
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X680D
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-transsion-infinix-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_x680d_h6116-user 10 QP1A.190711.020 199789 release-keys"

BUILD_FINGERPRINT := Infinix/X680D-IN/Infinix-X680D:10/QP1A.190711.020/J-AS-211130V404:user/release-keys

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31 \

