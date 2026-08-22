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
RUN apt-get update && apt-get install -y --no-install-recommends python3 gzip \
    && rm -rf /var/lib/apt/lists/*

# RSCTF dynamic-flag compatibility layer. The build-time scan records
# exact marker-bearing files; runtime replacement is therefore bounded
# to those files instead of walking the image on every team start.
USER root
COPY rsctf-entrypoint.sh /usr/local/bin/rsctf-entrypoint
COPY rsctf-prepare-flag.sh /usr/local/bin/rsctf-prepare-flag
RUN set -eu; \
    chmod 0555 /usr/local/bin/rsctf-entrypoint; \
    : > /etc/rsctf-flag-targets; \
    for root in /etc/xinetd.d/ctf /etc/init.sh /home/ctf/run.sh /home/ctf/initramfs.cpio.gz /home/ctf/bzImage /home/ctf /app /src /srv /home /opt /var/www /challenge /chall /ctf /root /usr/src /usr/local/bin /workspace /flag /flag.txt; do \
      if [ -e "$root" ]; then \
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_e6362fb212c1fc7ee61dcee1281f06 -e RSCTF_DYNAMIC_FLAG_93e7b177aa0092cd4269666 {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets; \
    chmod 0555 /usr/local/bin/rsctf-prepare-flag
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
