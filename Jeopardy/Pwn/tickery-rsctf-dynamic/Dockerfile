# check=skip=JSONArgsRecommended
FROM ubuntu:lunar

EXPOSE 8000

RUN sed -i -e 's|archive.ubuntu.com|old-releases.ubuntu.com|g' -e 's|security.ubuntu.com|old-releases.ubuntu.com|g' /etc/apt/sources.list && apt-get update
RUN apt-get install -y socat

RUN mkdir /pwn
COPY src/flag.txt /pwn/flag.txt
COPY dist/main /pwn/main
COPY dist/main /pwn/main
WORKDIR /pwn

RUN chown -R 755 /pwn
RUN chmod 700 /usr/bin/* /bin/* /tmp /dev/shm
RUN chmod 755 /usr/bin/env /bin/dash /bin/bash /bin/sh /bin/cat /usr/bin/id /bin/ls
RUN chmod +x /pwn/main

CMD socat TCP-LISTEN:8000,reuseaddr,fork EXEC:/pwn/main,su=nobody

# RSCTF dynamic-flag compatibility layer. The build-time scan records
# exact marker-bearing files; runtime replacement is therefore bounded
# to those files instead of walking the image on every team start.
USER root
COPY rsctf-entrypoint.sh /usr/local/bin/rsctf-entrypoint
RUN set -eu; \
    chmod 0555 /usr/local/bin/rsctf-entrypoint; \
    : > /etc/rsctf-flag-targets; \
    for root in /pwn/main /pwn/flag.txt /pwn /app /src /srv /home /opt /var/www /challenge /chall /ctf /root /usr/src /usr/local/bin /workspace /flag /flag.txt; do \
      if [ -e "$root" ]; then \
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_afb4b93f801b -e RSCTF_DYNAMIC_FLAG_4371b {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
