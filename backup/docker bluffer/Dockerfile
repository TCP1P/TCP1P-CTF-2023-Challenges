FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y gcc-multilib socat && \
    apt-get install -y xinetd && \
    apt-get clean
    rm -rf /var/lib/apt/lists/*

RUN useradd -m -g users -s /bin/bash user

COPY src/blufferoverflow home/user
COPY run.sh /
COPY xinetd /etc/xinetd.d/user

WORKDIR /home/user

USER user

RUN chmod +x /run.sh

EXPOSE 1337

CMD ["/usr/sbin/xinetd", "-dontfork"]