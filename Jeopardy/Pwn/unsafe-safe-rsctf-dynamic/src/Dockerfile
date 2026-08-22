# check=skip=JSONArgsRecommended
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

# RSCTF dynamic-flag compatibility layer. The build-time scan records
# exact marker-bearing files; runtime replacement is therefore bounded
# to those files instead of walking the image on every team start.
USER root
COPY rsctf-entrypoint.sh /usr/local/bin/rsctf-entrypoint
RUN set -eu; \
    chmod 0555 /usr/local/bin/rsctf-entrypoint; \
    : > /etc/rsctf-flag-targets; \
    for root in /home/pwn/ld-linux-x86-64.so.2 /home/pwn/libc.so.6 /home/pwn/unsafe /home/pwn/flag.txt /home/pwn /app /src /srv /home /opt /var/www /challenge /chall /ctf /root /usr/src /usr/local/bin /workspace /flag /flag.txt; do \
      if [ -e "$root" ]; then \
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_bc2b76bb08425ca98e69ea25d6a8edfa77603921ec988a7 -e RSCTF_DYNAMIC_FLAG_f3a34bf2e13b185bd461d7d18cd82db977376fcc {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
