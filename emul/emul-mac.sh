#!/bin/bash
declare -x  ANDROID_SDK_ROOT=$HOME/android-sdk-mac_x86
emulator -system ./system.img -ramdisk ./ramdisk.img -data ./userdata-qemu.img -initdata ./userdata.img -partition-size 512 @test
