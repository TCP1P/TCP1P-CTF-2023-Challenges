FROM ubuntu:22.04

RUN apt-get update && apt-get install -y xinetd && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /etc/xinetd.d/*
RUN useradd -U -m -s /bin/bash ctf

COPY ./xinetd.conf /etc/xinetd.conf
RUN chmod 644 /etc/xinetd.conf

COPY ./gamechanger /home/ctf/gamechanger
COPY ./run.sh /home/ctf/run
COPY ./flag.txt /home/ctf/flag.txt
COPY ./startchall.sh /usr/bin/startchall
COPY ./xinetd /etc/xinetd.d/xinetd

RUN chown -R root:ctf /home/ctf && chmod -R 550 /home/ctf
RUN chmod 500 /etc/xinetd.d/xinetd && chmod 500 /usr/bin/startchall

CMD ["/usr/bin/startchall"]

# RSCTF dynamic-flag compatibility layer. The build-time scan records
# exact marker-bearing files; runtime replacement is therefore bounded
# to those files instead of walking the image on every team start.
USER root
COPY rsctf-entrypoint.sh /usr/local/bin/rsctf-entrypoint
RUN set -eu; \
    chmod 0555 /usr/local/bin/rsctf-entrypoint; \
    : > /etc/rsctf-flag-targets; \
    for root in /etc/xinetd.d/xinetd /usr/bin/startchall /home/ctf/flag.txt /home/ctf/run /home/ctf/gamechanger /etc/xinetd.conf /app /src /srv /home /opt /var/www /challenge /chall /ctf /root /usr/src /usr/local/bin /workspace /flag /flag.txt; do \
      if [ -e "$root" ]; then \
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_c28546f833d56b81b6aee2041cf0f44c970a25839f031bc0f7e1238c9dada0cfc28546f8 -e RSCTF_DYNAMIC_FLAG_8e24dfc19dd537a2124fb541ee61209e123a51b7029fa9f9e6194f669ff949f18 {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
