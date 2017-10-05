#
# Copyright (C) 2017 KuCK@XDAdev
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

# inherit from common msm8610-common
-include device/motorola/msm8610-common/BoardConfigCommon.mk


LOCAL_PATH := AOSPA/device/motorola/otus

# Asserts
TARGET_OTA_ASSERT_DEVICE := xt1505,xt1506,otus_umts,otus_umtsds,otus,otus_ds

# Init
TARGET_INIT_VENDOR_LIB := libinit_otus
TARGET_RECOVERY_DEVICE_MODULES := libinit_otus

# Kernel
TARGET_KERNEL_CONFIG := cm_otus_defconfig
TARGET_KERNEL_SOURCE := AOSPA/kernel/motorola/msm8610
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
TARGET_KERNEL_CROSS_COMPILE_PREFIX :=/UBERTC/arm-linux-androideabi-5.3/bin/arm-linux-androideabi-

# Storage & partiiton
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1895825408
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5418909696
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/ramdisk/fstab.qcom

# Power
TARGET_POWERHAL_VARIANT := qcom


# SEPolicy
BOARD_SEPOLICY_DIRS += \
    $(LOCAL_PATH)/sepolicy
