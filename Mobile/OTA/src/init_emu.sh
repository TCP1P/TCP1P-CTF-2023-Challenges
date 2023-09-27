#!/bin/bash

emulator_name=${EMULATOR_NAME}

function kill_emulator() {
  adb devices | grep emulator | cut -f1 | xargs -I {} adb -s "{}" emu kill
}

function start_emulator() {
  kill_emulator
  nohup emulator -avd "${emulator_name}" -no-window -writable-system -noaudio -no-boot-anim -memory 2048 -camera-back none &
};

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
  sleep 2
  wait_for_device
  sleep 2

  adb shell avbctl disable-verification
  adb disable-verity
  adb reboot
};

function install_challenge() {
  echo "Installing challenge..."
  adb root
  sleep 2
  wait_for_device
  sleep 2

  adb remount
  adb shell mkdir /system/app/Challenge
  adb push challenge.apk /system/app/Challenge
  adb shell chmod 755 /system/app/Challenge 

  adb shell reboot
};

function hidden_policy() {
  echo "Bypassing hidden policy..."
  adb shell "settings put global hidden_api_policy_pre_p_apps 1;settings put global hidden_api_policy_p_apps 1;settings put global hidden_api_policy 1"
};
 
function secure_device() {
  echo "Securing device..."
  adb root
  sleep 2
  wait_for_device
  sleep 2

  adb remount
  adb shell rm /system/xbin/su
};

start_emulator
wait_for_device
setup_device
wait_for_device
install_challenge
wait_for_device

adb root
sleep 2
wait_for_device
sleep 2

hidden_policy
secure_device

adb wait-for-device

while [ "$(adb get-state)" == "offline" ]; do
    sleep 1
done

while true; do
    result=$(adb shell getprop sys.boot_completed 2>&1)

    if [ "$result" == "1" ]; then
        break
    fi

    sleep 1
done

adb shell pm grant com.android.chrome android.permission.READ_EXTERNAL_STORAGE
adb shell pm grant com.android.chrome android.permission.WRITE_EXTERNAL_STORAGE

adb unroot

kill_emulator()