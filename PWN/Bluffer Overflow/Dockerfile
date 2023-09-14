FROM ubuntu:22.04

RUN apt-get update -y && \
    apt-get install -y xinetd && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /etc/xinetd.d/*

RUN useradd -m -g users -s /bin/bash user

WORKDIR /home/user

COPY ./src/blufferoverflow/flag.txt .
COPY ./src/blufferoverflow/bluffer .
COPY ./src/run.sh ./run
COPY ./src/xinetd /etc/xinetd.d/xinetd
COPY ./src/start.sh /usr/bin/start


RUN chown -R root:root . && \
    chmod o+rx . && \
    chmod 444 flag.txt && \
    chmod a+x bluffer && \
    chmod 500 /etc/xinetd.d/xinetd && chmod 500 /usr/bin/start && \
    chmod +x run

EXPOSE 1337

CMD ["/usr/bin/start"]