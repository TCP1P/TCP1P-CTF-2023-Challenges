FROM ubuntu:jammy

EXPOSE 8000

RUN apt update && apt upgrade -y && apt update --fix-missing
RUN apt-get install -y socat

RUN mkdir /home/pwn
COPY flag.txt /home/pwn/flag.txt
COPY unsafe /home/pwn/unsafe
COPY libc.so.6 /home/pwn/libc.so.6
COPY ld-linux-x86-64.so.2 /home/pwn/ld-linux-x86-64.so.2
WORKDIR /home/pwn

RUN chown -R 755 /home/pwn
RUN chmod 700 /usr/bin/* /bin/* /tmp /dev/shm
RUN chmod 755 /usr/bin/env /bin/dash /bin/bash /bin/sh /bin/cat /usr/bin/id /bin/ls
RUN chmod +x /home/pwn/unsafe

CMD socat TCP-LISTEN:8000,reuseaddr,fork EXEC:/home/pwn/unsafe,su=nobody
