FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y gcc-multilib socat && \
    apt-get clean

RUN useradd -m -g users -s /bin/bash pwnuser

WORKDIR /home/pwnuser

USER pwnuser

COPY . .

EXPOSE 1337