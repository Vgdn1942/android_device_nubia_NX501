DEVICE_PACKAGE_OVERLAYS += device/nubia/NX501/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

LOCAL_PATH := device/nubia/NX501

# Snd_soc_msm
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3

# Configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/egl.cfg:system/etc/egl.cfg \
    $(LOCAL_PATH)/configs/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/configs/init.qcom.btdun.sh:system/etc/init.qcom.btdun.sh \
    $(LOCAL_PATH)/configs/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
    $(LOCAL_PATH)/configs/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/configs/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/configs/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    $(LOCAL_PATH)/configs/init.crda.sh:system/etc/init.crda.sh \
    $(LOCAL_PATH)/configs/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    $(LOCAL_PATH)/configs/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/configs/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    $(LOCAL_PATH)/configs/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/configs/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/configs/usf_post_boot.sh:system/etc/usf_post_boot.sh \
    $(LOCAL_PATH)/configs/nfcee_access.xml:system/etc/nfcee_access.xml

# WIFI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

 # Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    libQWiFiSoftApCfg \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/configs/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \

# Thermald
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermald/thermald.conf:system/etc/thermald-8064.conf

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Specific keys
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keys/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    $(LOCAL_PATH)/keys/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
    $(LOCAL_PATH)/keys/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
    $(LOCAL_PATH)/keys/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keys/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    $(LOCAL_PATH)/keys/keypad_8960_liquid.kl:system/usr/keylayout/keypad_8960_liquid.kl \
    $(LOCAL_PATH)/keys/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
    $(LOCAL_PATH)/keys/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
    $(LOCAL_PATH)/keys/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl \
    $(LOCAL_PATH)/keys/cyttsp4_mt.idc:system/usr/idc/cyttsp4_mt.idc

# GPS Location
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/clatd.conf:system/etc/clatd.conf \
    $(LOCAL_PATH)/gps/dbus.conf:system/etc/dbus.conf \
    $(LOCAL_PATH)/gps/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/lowi.conf:system/etc/lowi.conf \
    $(LOCAL_PATH)/gps/msap.conf:system/etc/msap.conf \
    $(LOCAL_PATH)/gps/quipc.conf:system/etc/quipc.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/gps/sec_config:system/etc/sec_config \
    $(LOCAL_PATH)/gps/xtwifi.conf:system/etc/xtwifi.conf \

# TWRP fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/twrp.fstab:/recovery/root/etc/twrp.fstab

# Vendor lib
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/lib/hw/lights.msm8960.so:system/lib/hw/lights.msm8960.so \
    $(LOCAL_PATH)/lib/libqc-opt.so:system/lib/libqc-opt.so
#    $(LOCAL_PATH)/lib/hw/sensors.has_gyro.so:system/lib/hw/sensors.has_gyro.so \
#    $(LOCAL_PATH)/lib/hw/sensors.msm8960.so:system/lib/hw/sensors.msm8960.so \

# RAMDISK
PRODUCT_PACKAGES += fstab.qcom
PRODUCT_PACKAGES += init.qcom.rc
PRODUCT_PACKAGES += init.qcom.sh
PRODUCT_PACKAGES += init.qcom.usb.rc
PRODUCT_PACKAGES += init.qcom.usb.sh
PRODUCT_PACKAGES += init.target.rc
PRODUCT_PACKAGES += ueventd.qcom.rc
PRODUCT_PACKAGES += init.qcom.class_core.sh
PRODUCT_PACKAGES += init.qcom.early_boot.sh
PRODUCT_PACKAGES += init.qcom.syspart_fixup.sh

# Poweroff charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/poweroffcharge:root/sbin/poweroffcharge

# Audio
PRODUCT_PACKAGES += \
    alsa.msm8960 \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    tinymix \
    libemoji

#LIBGESTURES
PRODUCT_PACKAGES += \
    libgestures \
    gestures.msm8960

# Bluetooth
PRODUCT_PACKAGES += \
    hci_qcomm_init \
    bluetoothd

PRODUCT_PACKAGES += \
    bdAddrLoader \
    libwfcu \
    conn_init

# QRNG
PRODUCT_PACKAGES += \
    qrngp

# Display
PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    hwcomposer.msm8960 \
    gralloc.msm8960 \
    copybit.msm8960 \
    memtrack.msm8960

# Lights
PRODUCT_PACKAGES += \
    lights.default

# Omx
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libc2dcolorconvert \
    libdashplayer \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# QCOM rngd
PRODUCT_PACKAGES += \
    qrngd

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Power hal
PRODUCT_PACKAGES += \
    power.msm8960

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck      \
    make_ext4fs \
    setup_fs

# NFC Support
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    PhaseBeam

# Other apps
PRODUCT_PACKAGES += \
    Torch

# FM 	
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

# qcom
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# telephony configuration
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_cdma_sub=0

# common build.props
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb

PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.telephony.call_ring.multiple=0 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=180

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.locale.language=ru \
    ro.product.locale.region=RU \
    persist.sys.timezone=Europe/Moscow \
    ro.com.android.dateformat=dd-MM-yyyy

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Recovery adb
ADDITIONAL_DEFAULT_PROPERTIES += \
ro.adb.secure=0 \
ro.secure=0 \
persist.service.adb.enable=1 \
persist.service.debuggable=1 \
persist.sys.usb.config=mtp

LIBART_IMG_HOST_BASE_ADDRESS := 0x60000000
LIBART_IMG_TARGET_BASE_ADDRESS := 0x70000000

# Assert
TARGET_OTA_ASSERT_DEVICE := nx501,NX501

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
# call hwui memory config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
