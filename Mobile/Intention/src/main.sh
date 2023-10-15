#!/bin/bash

(cd /home/androidusr; nohup /home/androidusr/docker-android/mixins/scripts/run.sh &)

function wait_for_device() {
  echo "Waiting for device..."
  adb wait-for-device

  while [ "$(adb get-state)" == "offline" ]; do
      sleep 1
  done
};

function setup_device() {
  echo "Setting up device..."

  adb root
  sleep 5
  
  adb shell avbctl disable-verification
  adb disable-verity
  adb reboot
};

function init_device() {
  echo "Initializing device..."

  adb root
  sleep 5
  
  adb remount

  adb install challenge.apk
  adb push flag.txt /data/data/com.kuro.intention/files/flag.txt

  adb shell rm -f /system/xbin/su
  adb reboot
};

adb start-server

wait_for_device
setup_device

wait_for_device
init_device

wait_for_device
while true; do
    result=$(adb shell getprop sys.boot_completed 2>&1)

    if [ "$result" == "1" ]; then
        break
    fi

    sleep 1
done

adb shell pm grant com.android.chrome android.permission.READ_EXTERNAL_STORAGE
adb shell pm grant com.android.chrome android.permission.WRITE_EXTERNAL_STORAGE

cd ./ws-scrcpy
npm start