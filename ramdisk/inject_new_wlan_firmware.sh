#!/system/bin/sh

PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

mount -o rw,remount /system

cp /sbin/wlan/WCNSS_cfg.dat /system/etc/firmware/wlan/prima/WCNSS_cfg.dat
cp /sbin/wlan/WCNSS_qcom_cfg.ini /system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini
cp /sbin/wlan/WCNSS_qcom_wlan_nv.bin /system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

mount -o ro,remount /system
