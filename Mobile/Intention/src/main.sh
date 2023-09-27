#!/bin/bash

./init_emu.sh

addgroup kvm
chmod 777 /dev/kvm

./start_emu.sh

cd /ws-scrcpy
npm start