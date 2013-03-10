# Copyright (C) 2009 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from the proprietary version
-include vendor/samsung/apollo/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := apollo

TARGET_OTA_ASSERT_DEVICE := apollo,GT-I5800,GT-I5801

# Recovery
BOARD_USES_BML_OVER_MTD := false
BOARD_BOOT_DEVICE := /dev/block/bml5
BOARD_BML_BOOT := "/dev/block/bml5"
BOARD_USES_BMLUTILS := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk0p1

# Inherit from apollo common
-include device/samsung/apollo-common/BoardConfigCommon.mk
