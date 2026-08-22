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

# RSCTF dynamic-flag compatibility layer. The build-time scan records
# exact marker-bearing files; runtime replacement is therefore bounded
# to those files instead of walking the image on every team start.
USER root
COPY rsctf-entrypoint.sh /usr/local/bin/rsctf-entrypoint
RUN set -eu; \
    chmod 0555 /usr/local/bin/rsctf-entrypoint; \
    : > /etc/rsctf-flag-targets; \
    for root in /usr/bin/start /etc/xinetd.d/xinetd /home/user/run /home/user /app /src /srv /home /opt /var/www /challenge /chall /ctf /root /usr/src /usr/local/bin /workspace /flag /flag.txt; do \
      if [ -e "$root" ]; then \
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_abd2b25e0e9b9a75ac9d6d9fee1a8ae37f47b660ac715842720e02 -e RSCTF_DYNAMIC_FLAG_79582a0183deee6ac22a5c85d1a0c37a38df8c81b03a082 {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
