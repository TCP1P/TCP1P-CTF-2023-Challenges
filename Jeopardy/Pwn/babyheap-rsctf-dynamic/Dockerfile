FROM ubuntu:22.04

RUN apt-get update -y && \
    apt-get install -y xinetd && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /etc/xinetd.d/*

RUN useradd -m -g users -s /bin/bash ctf

WORKDIR /home/ctf

COPY ./src/ .
COPY ./xinetd /etc/xinetd.d/xinetd
COPY ./start.sh /usr/bin/start

RUN chown -R root:root . && \
    chmod o+rx . && \
    chmod 444 flag.txt && \
    # chmod a+x guess && \
    chmod 500 /etc/xinetd.d/xinetd && chmod 500 /usr/bin/start && \
    chmod +x run

EXPOSE 4267

CMD ["/usr/bin/start"]

# RSCTF dynamic-flag compatibility layer. The build-time scan records
# exact marker-bearing files; runtime replacement is therefore bounded
# to those files instead of walking the image on every team start.
USER root
COPY rsctf-entrypoint.sh /usr/local/bin/rsctf-entrypoint
RUN set -eu; \
    chmod 0555 /usr/local/bin/rsctf-entrypoint; \
    : > /etc/rsctf-flag-targets; \
    for root in /usr/bin/start /etc/xinetd.d/xinetd /home/ctf /app /src /srv /home /opt /var/www /challenge /chall /ctf /root /usr/src /usr/local/bin /workspace /flag /flag.txt; do \
      if [ -e "$root" ]; then \
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_81aa816d2d3ca785d1fde31e9821e8812810d26cda541ed0e71960e62b -e RSCTF_DYNAMIC_FLAG_c3845740813615e9e1bda9d5dacca7f7bdbbe1dcad760d9474b {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
