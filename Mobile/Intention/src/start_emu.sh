#!/bin/bash

emulator_name=${EMULATOR_NAME}

adb devices | grep emulator | cut -f1 | xargs -I {} adb -s "{}" emu kill

nohup emulator -avd "${emulator_name}" -writable-system -noaudio -no-boot-anim -memory 2048 -camera-back none & > /dev/null

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