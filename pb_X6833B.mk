<a href="README.md" >Go Back</a>

### pb_device.mk sample

```bash

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, device/<path>/device.mk) -- path to main device makefile

# Inherit common product files.
$(call inherit-product, vendor/pb/config/common.mk)

# Set those variables here to overwrite the inherited values.

PRODUCT_BRAND := infinic
PRODUCT_DEVICE := X6833B
PRODUCT_NAME := pb_device
PRODUCT_MANUFACTURER := infinix
PRODUCT_MODEL := infinix X6833B
TARGET_VENDOR := vendorboot
```
