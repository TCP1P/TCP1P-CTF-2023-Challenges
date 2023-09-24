#!/bin/bash

./init_emu.sh

mv ~/.android /home/ctf
chown -R ctf:ctf /home/ctf/.android

rm -f /home/ctf/.android/avd/nexus.avd/*.lock
sed -i 's/root/home\/ctf/g' /home/ctf/.android/avd/nexus.ini

addgroup kvm
adduser ctf kvm
chmod 777 /dev/kvm
chown -R ctf:ctf /dev/kvm

su -c "nohup ./start_vnc.sh &" ctf