#!/bin/sh
echo "remounting..."
#adb remount
adb shell mount -o remount,rw -t yaffs2 /dev/block/mtdblock0 /system
adb shell chmod 777 /system/app
echo "pushing login apk..."
adb push GoogleLoginService.apk /system/app/.
echo "pushing framework apk..."
adb push GoogleServicesFramework.apk /system/app/.
echo "pushing vending apk..."
adb push Phonesky.apk /system/app/.
echo "done"
