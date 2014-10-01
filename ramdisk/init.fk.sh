#!/system/bin/sh

PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

mount -o rw,remount /system

mv /system/bin/thermal-engine /system/bin/thermal-engine.bak

if [ ! -e /system/etc/init.d ]; then
  mkdir /system/etc/init.d
  chown -R root.root /system/etc/init.d
  chmod -R 755 /system/etc/init.d
fi;

mount -o ro,remount /system
