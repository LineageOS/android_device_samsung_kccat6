# Copyright (C) 2014 The CyanogenMod Project
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

# inherit from common lentislte
-include device/samsung/lentislte-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := kccat6xx,kccat6

KCCAT6_PATH := device/samsung/kccat6xx

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(KCCAT6_PATH)/bluetooth

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := dummy_defconfig
BOARD_CUSTOM_BOOTIMG_MK := $(KCCAT6_PATH)/mkbootimg.mk
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom androidboot.selinux=permissive user_debug=31 msm_rtb.filter=0x37 dwc3_msm.cpu_to_affin=1
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02200000 --tags_offset 0x02000000 --second_offset 0x00f00000
TARGET_KERNEL_CONFIG := say_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/kccat6

# NFC
BOARD_NFC_CHIPSET := pn547

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2539307008
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3859718144

# Radio
BOARD_RIL_CLASS := ../../../$(KCCAT6_PATH)/ril

# Recovery
TARGET_RECOVERY_FSTAB := $(KCCAT6_PATH)/rootdir/etc/fstab.qcom

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 28
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# inherit from the proprietary version
-include vendor/samsung/kccat6xx/BoardConfigVendor.mk
