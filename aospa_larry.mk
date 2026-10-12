#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_larry,$(TARGET_PRODUCT))

# Base Android configuration
$(call inherit-product, \
    $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

$(call inherit-product, \
    $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Device configuration
$(call inherit-product, device/oneplus/larry/device.mk)

# PenguinOS / AOSPA configuration
$(call inherit-product, \
    vendor/aospa/target/product/aospa-target.mk)

# Device identity
PRODUCT_NAME := aospa_larry
PRODUCT_DEVICE := larry
PRODUCT_BRAND := OnePlus
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := CPH2467

# GMS identity
PRODUCT_GMS_CLIENTID_BASE := android-oppo

# Stock firmware identity
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OP5958L1-user 15 UKQ1.230924.001 T.R4T2.24da738-26996-834f2 release-keys" \
    BuildFingerprint=OnePlus/CPH2467/OP5958L1:15/UKQ1.230924.001/T.R4T2.24da738-26996-834f2:user/release-keys \
    DeviceName=OP5958L1 \
    DeviceProduct=OP5958L1 \
    SystemDevice=OP5958L1 \
    SystemName=OP5958L1

TARGET_BOOT_ANIMATION_RES := 1080

endif
