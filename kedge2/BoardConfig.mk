#
# Copyright 2014 The Android Open-Source Project
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
include device/khadas/rk3588/BoardConfig.mk
BUILD_WITH_GO_OPT := false

# AB image definition
BOARD_USES_AB_IMAGE := false
BOARD_ROCKCHIP_VIRTUAL_AB_ENABLE := false

BOARD_GRAVITY_SENSOR_SUPPORT := true
BOARD_COMPASS_SENSOR_SUPPORT := true
BOARD_SENSOR_COMPASS_AK8963-64 := true
BOARD_GYROSCOPE_SENSOR_SUPPORT := true
BOARD_PROXIMITY_SENSOR_SUPPORT := true
BOARD_LIGHT_SENSOR_SUPPORT := true

ifeq ($(strip $(BOARD_USES_AB_IMAGE)), true)
    include device/khadas/common/BoardConfig_AB.mk
    TARGET_RECOVERY_FSTAB := device/khadas/rk3588/kedge2/recovery.fstab_AB
endif

PRODUCT_KERNEL_CONFIG += pcie_wifi.config
PRODUCT_UBOOT_CONFIG := kedge2
PRODUCT_KERNEL_DTS := rk3588s-khadas-edge2
BOARD_GSENSOR_MXC6655XA_SUPPORT := true
BOARD_CAMERA_SUPPORT_EXT := true
BOARD_HS_ETHERNET := true
