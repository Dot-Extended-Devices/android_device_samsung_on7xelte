#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at.
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit device configuration
$(call inherit-product, device/samsung/on7xelte/device.mk)

# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common dot  stuff
$(call inherit-product, vendor/dot/config/common.mk)

# Device identifier
PRODUCT_NAME := dot_on7xelte
PRODUCT_DEVICE := on7xelte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Sound picker fix
TARGET_USE_OLD_SOUND_PICKER := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="on7xeltedd-user 6.0.1 MMB29K G610FDDU1AQG2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "samsung/on7xeltedd/on7xelte:6.0.1/MMB29K/G610FDDU1AQG2:user/release-keys"

#Sign woods to Official
DOT_OFFICIAL := true
DOT_BUILDTYPE := OFFICIAL

#xhdpi
# Gapps
PRODUCT_DEVICE := on7xelte
PRODUCT_NAME := dot_on7xte
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
TARGET_ARCH := arm
TARGET_DENSITY := xxhdpi
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm
TARGET_MINIMAL_APPS := true
