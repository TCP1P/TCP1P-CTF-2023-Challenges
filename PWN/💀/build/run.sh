#!/bin/sh

cd $(dirname $0)
/usr/bin/qemu-system-x86_64 \
	-m 64M \
	-cpu kvm64,+smep,+smap \
	-nographic \
	-monitor /dev/null \
	-kernel bzImage \
	-initrd rootfs.cpio.gz \
	-append "console=ttyS0 quiet kaslr panic=1 kpti=1 oops=panic" \
