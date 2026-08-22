FROM ubuntu:22.04

RUN apt-get update -y && \
    apt-get install -y xinetd && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /etc/xinetd.d/*

RUN useradd -m -g users -s /bin/bash user

WORKDIR /home/user

COPY ./src/guessmynumber/flag.txt .
COPY ./src/guessmynumber/guess .
COPY ./src/run.sh ./run
COPY ./src/xinetd /etc/xinetd.d/xinetd
COPY ./src/start.sh /usr/bin/start


RUN chown -R root:root . && \
    chmod o+rx . && \
    chmod 444 flag.txt && \
    chmod a+x guess && \
    chmod 500 /etc/xinetd.d/xinetd && chmod 500 /usr/bin/start && \
    chmod +x run

EXPOSE 7331

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
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_c7e6803d1d74201311a552d793f1f2c990c2cd4bf14e87e73a7c3 -e RSCTF_DYNAMIC_FLAG_31c7eacbeb4df70a4e477b5c7efbe9e175043ab1e5ac62 {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
