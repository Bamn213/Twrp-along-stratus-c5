#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
# Copyright (C) 2019-Present A-Team Digital Solutions
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from Stratus_C5 device
$(call inherit-product, device/along/Stratus_C5/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/along/Stratus_C5/recovery/root,recovery/root)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Stratus_C5
PRODUCT_NAME := omni_Stratus_C5
PRODUCT_BRAND := Stratus
PRODUCT_MODEL := C5
PRODUCT_MANUFACTURER := CloudMobile
PRODUCT_RELEASE_NAME := Stratus C5

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb
