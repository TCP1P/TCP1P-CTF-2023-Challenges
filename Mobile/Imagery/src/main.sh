#!/bin/bash
emulator_name=${EMULATOR_NAME}

function kill_emulator() {
  echo "Killing emulator(s)..."
  adb devices | grep emulator | cut -f1 | xargs -I {} adb -s "{}" emu kill

  while true; do
      result=$(adb get-state 2>&1)

      if [ "$result" == "error: no devices/emulators found" ]; then
          kill 9 `pidof emulator`
          break
      fi

      sleep 1
  done
}

function start_emulator() {
  echo "Starting emulator..."
  nohup emulator -avd "${emulator_name}" -gpu off -writable-system -no-window -no-audio -no-boot-anim &
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

function init_device() {
  echo "Initializing device..."
  adb root
  sleep 2
  wait_for_device
  sleep 2

  adb remount

  adb shell mkdir /system/app/Challenge
  adb push challenge.apk /system/app/Challenge
  adb shell chmod 755 /system/app/Challenge

  adb shell /system/xbin/su
};

start_emulator
sleep 2

wait_for_device
setup_device

wait_for_device
init_device

kill_emulator
start_emulator

wait_for_device
while true; do
    result=$(adb shell getprop sys.boot_completed 2>&1)

    if [ "$result" == "1" ]; then
        break
    fi

    sleep 1
done

cd /ws-scrcpy
npm start