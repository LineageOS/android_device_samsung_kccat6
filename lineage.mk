#
# Copyright (C) 2016 The Sayanogen Project
# Copyright (C) 2017 The LineageOS Project
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
#

$(call inherit-product, device/samsung/kccat6/full_kccat6.mk)

# Inherit common CM phone.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_DEVICE := kccat6
PRODUCT_NAME := lineage_kccat6

# SH LANGUAGE SET
PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION := US

PRODUCT_LOCALES := en_US ko_KR en_GB en_CA en_AU en_NZ en_SG zh_CN zh_TW ja_JP fr_FR fr_BE fr_CA fr_CH it_IT it_CH es_ES de_DE de_AT de_CH de_LI nl_NL nl_BE cs_CZ pl_PL ru_RU # vi_VN

