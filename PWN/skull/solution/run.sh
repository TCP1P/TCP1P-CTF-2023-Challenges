#!/bin/bash
musl-gcc -static -o solve exploit.c
cp solve fs/home/blud
cd fs
find . -print0 | cpio -o --format=newc --null | gzip > ../initramfs.cpio.gz
cd ..

/usr/bin/qemu-system-x86_64 \
	-m 64M \
	-cpu kvm64,+smep,+smap \
	-nographic \
	-monitor /dev/null \
	-kernel bzImage \
	-initrd initramfs.cpio.gz \
	-s \
	-no-reboot \
	-append "console=ttyS0 quiet kaslr panic=1 kpti=1 oops=panic" \
