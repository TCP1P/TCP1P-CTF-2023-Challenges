FROM ubuntu:22.04

RUN apt update && apt upgrade -y && apt update --fix-missing
RUN apt-get install -y socat

WORKDIR /srv
COPY src/flag.txt ./flag.txt
COPY dist/ojou ./ojou

RUN chown -R 755 /srv
RUN chmod 700 /usr/bin/* /bin/* /tmp /dev/shm
RUN chmod 755 /usr/bin/env /bin/dash /bin/bash /bin/sh /bin/cat /usr/bin/id /bin/ls
RUN chmod +x /srv/ojou

EXPOSE 6666
CMD socat TCP-LISTEN:6666,reuseaddr,fork EXEC:/srv/ojou,su=nobody