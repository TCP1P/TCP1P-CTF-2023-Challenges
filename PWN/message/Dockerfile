FROM ubuntu:jammy

# Update
RUN apt-get update --fix-missing && \
    apt-get -y dist-upgrade && \
    apt-get -y upgrade

# Dependencies
RUN apt-get install -y lib32z1 xinetd libseccomp-dev

# Create ctf group & user
RUN mkdir /home/ctf
RUN groupadd -r ctf && useradd -r -g ctf ctf

# Config file
COPY config/run_challenge.sh /home/ctf/run_challenge.sh
COPY config/run_xinetd.sh /etc/run_xinetd.sh
COPY config/ctf.xinetd /etc/xinetd.d/ctf
RUN echo "Blocked by ctf_xinetd" > /etc/banner_fail

# dev nod
RUN mkdir /home/ctf/dev && \
    mknod /home/ctf/dev/null c 1 3 && \
    mknod /home/ctf/dev/zero c 1 5 && \
    mknod /home/ctf/dev/random c 1 8 && \
    mknod /home/ctf/dev/urandom c 1 9 && \
    chmod 666 /home/ctf/dev/*

# Challenge
COPY dist/chall /home/ctf/chall
COPY dist/flag-3462d01f8e1bcc0d8318c4ec420dd482a82bd8b650d1e43bfc4671cf9856ee90.txt /home/ctf/flag-3462d01f8e1bcc0d8318c4ec420dd482a82bd8b650d1e43bfc4671cf9856ee90.txt

# Adding binaries
RUN mkdir /home/ctf/bin && \
    cp /bin/sh /home/ctf/bin && \
    cp /bin/ls /home/ctf/bin && \
    cp /bin/cat /home/ctf/bin

# Permission set to read & execute
RUN chown -R root:ctf /home/ctf
RUN chmod 750 /home/ctf/chall
RUN chmod 750 /home/ctf/run_challenge.sh
RUN chmod 440 /home/ctf/flag-3462d01f8e1bcc0d8318c4ec420dd482a82bd8b650d1e43bfc4671cf9856ee90.txt
RUN chmod 700 /etc/run_xinetd.sh

RUN service xinetd restart