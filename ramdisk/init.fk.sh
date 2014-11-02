#!/system/bin/sh

mount -o rw,remount /system

if [ ! -e /system/etc/init.d ]; then
  mkdir /system/etc/init.d
  chown -R root.root /system/etc/init.d
  chmod -R 755 /system/etc/init.d
fi;

mount -o ro,remount /system
