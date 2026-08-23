#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/blossom/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Malloc
PRODUCT_DISABLE_SCUDO := true

# Maintainer Name
ORION_MAINTAINER := Qbhi

# Enable/Disable GApps
ORION_GAPPS := false

# Enable/Disable Blur
TARGET_ENABLE_BLUR := true

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_blossom
PRODUCT_DEVICE := blossom
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#Enable blur
TARGET_ENABLE_BLUR := true

#Quicktap
TARGET_SUPPORTS_QUICK_TAP := true

#Nuke Aperture
PRODUCT_NO_CAMERA := true

#Nerver complie this
TARGET_EXCLUDES_AUDIOFX := true
TARGET_INCLUDE_VIA := false
TARGET_INCLUDE_REVAMPED := false

#Mist maintainer
MISTOS_MAINTAINER := HaiKito

#Gms
WITH_GMS := false
TARGET_USES_MINI_GAPPS := false
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_INCLUDE_LAWNCHAIR := false
BYPASS_CHARGE_SUPPORTED := false
