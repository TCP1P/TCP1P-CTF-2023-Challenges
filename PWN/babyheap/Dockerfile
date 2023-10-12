FROM ubuntu:22.04

RUN apt-get update -y && \
    apt-get install -y xinetd && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /etc/xinetd.d/*

RUN useradd -m -g users -s /bin/bash ctf

WORKDIR /home/ctf

COPY ./src/ .
COPY ./xinetd /etc/xinetd.d/xinetd
COPY ./start.sh /usr/bin/start

RUN chown -R root:root . && \
    chmod o+rx . && \
    chmod 444 flag.txt && \
    chmod a+x chall && \
    chmod 500 /etc/xinetd.d/xinetd && chmod 500 /usr/bin/start && \
    chmod +x run

EXPOSE 4267

CMD ["/usr/bin/start"]
