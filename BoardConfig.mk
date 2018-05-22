#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from the proprietary version
-include vendor/nubia/NX501/BoardConfigVendor.mk

# Flags
#TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp

TARGET_SPECIFIC_HEADER_PATH := device/nubia/NX501/include

# Kernel inline build
TARGET_KERNEL_SOURCE := kernel/nubia/NX501
TARGET_KERNEL_CONFIG := Z5_defconfig
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.9

PRODUCT_COPY_FILES := $(filter-out frameworks/base/data/keyboards/Generic.kl:system/usr/keylayout/Generic.kl \
	, $(PRODUCT_COPY_FILES))

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS     += -DNO_SECURE_DISCARD

# Architecture
TARGET_ARCH               := arm
TARGET_ARCH_VARIANT       := armv7-a-neon
TARGET_CPU_ABI            := armeabi-v7a
TARGET_CPU_ABI2           := armeabi
TARGET_CPU_SMP            := true
TARGET_CPU_VARIANT        := krait
TARGET_BOARD_PLATFORM     := msm8960

# Krait optimizations
TARGET_USE_QCOM_BIONIC_OPTIMIZATION  := true
TARGET_USE_KRAIT_PLD_SET             := true
TARGET_KRAIT_BIONIC_PLDOFFS          := 10
TARGET_KRAIT_BIONIC_PLDTHRESH        := 10
TARGET_KRAIT_BIONIC_BBTHRESH         := 64
TARGET_KRAIT_BIONIC_PLDSIZE          := 64

TARGET_USES_LOGD:=false
BOARD_USES_LEGACY_MMAP  := true
EXTENDED_FONT_FOOTPRINT := true

# Bionic
#MALLOC_IMPL := dlmalloc

# Bootloader
TARGET_NO_BOOTLOADER         := true
TARGET_BOOTLOADER_NAME       := NX501
TARGET_BOOTLOADER_BOARD_NAME := MSM8960
TARGET_BOARD_INFO_FILE       := device/nubia/NX501/board-info.txt

# Others
TARGET_NO_RADIOIMAGE       := true
BOARD_USES_SECURE_SERVICES := true
BOARD_LIB_DUMPSTATE        := libdumpstate.NX501
BOARD_EGL_CFG              := device/nubia/NX501/configs/egl.cfg

# Kernel 
BOARD_KERNEL_CMDLINE  := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=4 androidboot.selinux=disabled androidboot.bootdevice=msm_sdcc.1
BOARD_KERNEL_BASE     := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS  := --ramdisk_offset 0x02000000

# Filesystem
BOARD_HAS_LARGE_FILESYSTEM         := true
TARGET_USERIMAGES_USE_EXT4         := true
BOARD_BOOTIMAGE_PARTITION_SIZE     := 15728640 # 15M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640 # 15M
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1288491008 # 2G
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2362232832 # 2.66G
BOARD_FLASH_BLOCK_SIZE             := 131072

# Chromium
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# GPS
#BOARD_HAVE_NEW_QC_GPS := true
#TARGET_NO_RPC         := true

# Audio
QCOM_FM_ENABLED                    := true
AUDIO_FEATURE_ENABLED_FM           := true
BOARD_USES_ALSA_AUDIO              := true
BOARD_USES_LEGACY_ALSA_AUDIO       := true
TARGET_USES_QCOM_COMPRESSED_AUDIO  := true
BOARD_HAVE_NEW_QCOM_CSDCLIENT      := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
BOARD_HAVE_CSD_FAST_CALL_SWITCH    := true

# Display
TARGET_USES_ION                 := true
USE_OPENGL_RENDERER             := true
TARGET_USES_C2D_COMPOSITION     := true
HAVE_ADRENO_SOURCE              := false
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
#OVERRIDE_RS_DRIVER             := libRSDriver_adreno.so

# Fix Netflix
TARGET_NO_ADAPTIVE_PLAYBACK := true

# Power HAL
TARGET_POWERHAL_VARIANT := qcom

# Time
BOARD_USES_QC_TIME_SERVICES := true

# OTA
BLOCK_BASED_OTA := false

# Webkit
ENABLE_WEBGL            := true
TARGET_FORCE_CPU_UPLOAD := true

# FIXME: HOSTAPD-derived wifi driver
BOARD_HAS_QCOM_WLAN              := true
BOARD_HAS_QCOM_WLAN_SDK          := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"

# Bluetooth
BOARD_HAVE_BLUETOOTH                        := true
BOARD_HAVE_BLUETOOTH_QCOM                   := true
BLUETOOTH_HCI_USE_MCT                       := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/nubia/NX501/bluetooth

# NFC
BOARD_NFC_CHIPSET := pn547
BOARD_NFC_DEVICE := "/dev/pn544"

# RIL class
BOARD_RIL_CLASS := ../../../device/nubia/NX501/ril/
BOARD_PROVIDES_LIBRIL := true

# Recovery
#TARGET_NO_RECOVERY              := true
#BOARD_TOUCH_RECOVERY            := true
TARGET_RECOVERY_FSTAB            := device/nubia/NX501/rootdir/fstab.qcom
RECOVERY_FSTAB_VERSION           := 2
#BOARD_SUPPRESS_SECURE_ERASE     := true
BOARD_HAS_NO_SELECT_BUTTON       := true
BOARD_HAS_LARGE_FILESYSTEM       := true
#BOARD_REC_LANG_CHINESE          := true
TARGET_RECOVERY_PIXEL_FORMAT     := "RGBX_8888"
#TARGET_RECOVERY_INITRC          := device/nubia/NX501/recovery/init.rc
BOARD_CUSTOM_GRAPHICS            := ../../../device/nubia/NX501/recovery/graphics.c
BOARD_USE_CUSTOM_RECOVERY_FONT   := \"roboto_23x41.h\"
TARGET_USE_CUSTOM_LUN_FILE_PATH  := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"

# TWRP Recovery
DEVICE_RESOLUTION                := 1080x1920
RECOVERY_GRAPHICS_USE_LINELENGTH := true
#RECOVERY_SDCARD_ON_DATA         := true
TW_INTERNAL_STORAGE_PATH         := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT  := "sdcard"
#TW_EXTERNAL_STORAGE_PATH        := "/external_sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_REBOOT_BOOTLOADER          := true
TW_HAS_DOWNLOAD_MODE             := false
#TWRP_EVENT_LOGGING              := true
SP1_NAME                         := "persist"
SP1_BACKUP_METHOD                := files
SP1_MOUNTABLE                    := 1

# Don't build qcom camera HAL
USE_CAMERA_STUB                      := false
USE_DEVICE_SPECIFIC_CAMERA           := true
USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY := true

# Disable emulator
BUILD_EMULATOR := false

# Poweroff charger
#BOARD_CHARGER_SHOW_PERCENTAGE := true
RED_LED_PATH                   := "/sys/class/leds/red/brightness"

-include device/qcom/sepolicy/sepolicy.mk

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),userdebug)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif
#WITH_DEXPREOPT_BOOT_IMG_ONLY ?= true

