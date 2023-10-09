FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y qemu-system-x86-64 python3 xinetd
RUN groupadd -r ctf && useradd -r -g ctf ctf

ADD build/bzImage 		/home/ctf/bzImage
ADD build/initramfs.cpio.gz	/home/ctf/initramfs.cpio.gz
ADD build/run.sh		/home/ctf/run.sh
ADD build/init.sh		/etc/init.sh
ADD build/ctf.xinetd		/etc/xinetd.d/ctf

RUN chmod 1733 /tmp /var/tmp /dev/shm
RUN chmod 644 /home/ctf/*
RUN chmod 700 /etc/init.sh
RUN chmod 755 /home/ctf/run.sh

WORKDIR /home/ctf

RUN service xinetd restart
#CMD socat TCP-LISTEN:10000,reuseaddr,fork EXEC:"python3 /app/start.py"
