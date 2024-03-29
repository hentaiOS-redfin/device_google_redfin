#
# Copyright (C) 2021 The Calyx Institute
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

# For Google Camera
PRODUCT_COPY_FILES += \
    device/google/redfin/the_experiences.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/the_experiences.xml

# HBM
PRODUCT_PACKAGES += \
    HbmSVManagerOverlay

# Rro_overlay
PRODUCT_PACKAGES += \
    SettingsResRedfin

# Properties
TARGET_PRODUCT_PROP += device/google/redfin/product.prop
TARGET_PRODUCT_PROP += device/google/redfin/vendor.prop

# wireless_charger HAL service
include device/google/redfin/wireless_charger/wireless_charger.mk
