# Copyright (C) 2016 The Sayanogen Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from kccat6 device
$(call inherit-product, device/samsung/kccat6/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_kccat6
PRODUCT_DEVICE := kccat6
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-G901F

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=kccat6xx \
	TARGET_DEVICE=kccat6 \
	PRIVATE_BUILD_DESC="kccat6xx-user 6.0.1 MMB29M G901FXXS1CPLA release-keys"

BUILD_FINGERPRINT := "samsung/kccat6xx/kccat6:6.0.1/MMB29M/G901FXXS1CPLA:user/release-keys"
