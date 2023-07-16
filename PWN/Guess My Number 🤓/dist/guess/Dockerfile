FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y gcc-multilib socat && \
    apt-get clean

RUN useradd -m -g users -s /bin/bash user

WORKDIR /home/user

USER user

COPY . .

EXPOSE 7331