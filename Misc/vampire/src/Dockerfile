FROM python:alpine

EXPOSE 6000

RUN apk --update add socat

WORKDIR /opt/chall
COPY sandbox.py /opt/chall/sandbox.py
COPY flag.txt /flag.txt

# Securing files
RUN chown -R root:root /opt/chall/

# Securing environ
RUN chmod 700 /bin/* /tmp /dev/shm
RUN chmod 755 /usr/bin/env /bin/sh /usr/bin/nc /bin/cat /usr/bin/wget /usr/bin/groups /usr/bin/id /bin/ls /usr/bin/vi

CMD socat TCP-LISTEN:6000,reuseaddr,fork EXEC:/opt/chall/sandbox.py,su=nobody
