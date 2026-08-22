# check=skip=JSONArgsRecommended
FROM python:alpine

EXPOSE 6000

RUN apk --update add socat

WORKDIR /opt/chall
COPY sandbox.py /opt/chall/sandbox.py
RUN chmod +x /opt/chall/sandbox.py
COPY flag.txt /flag.txt

# Securing files
RUN chown -R root:root /opt/chall/

# Securing environ
RUN chmod 700 /bin/* /tmp /dev/shm
RUN chmod 755 /usr/bin/env /bin/sh /usr/bin/nc /bin/cat /usr/bin/wget /usr/bin/groups /usr/bin/id /bin/ls /usr/bin/vi

CMD socat TCP-LISTEN:6000,reuseaddr,fork EXEC:/opt/chall/sandbox.py,su=nobody

# RSCTF dynamic-flag compatibility layer. The build-time scan records
# exact marker-bearing files; runtime replacement is therefore bounded
# to those files instead of walking the image on every team start.
USER root
COPY rsctf-entrypoint.sh /usr/local/bin/rsctf-entrypoint
RUN set -eu; \
    chmod 0555 /usr/local/bin/rsctf-entrypoint; \
    : > /etc/rsctf-flag-targets; \
    for root in /opt/chall/sandbox.py /opt/chall /app /src /srv /home /opt /var/www /challenge /chall /ctf /root /usr/src /usr/local/bin /workspace /flag /flag.txt; do \
      if [ -e "$root" ]; then \
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_a8a9a2de46034d2634d6eeca9c92b4daa324015ca277cc6794953110779da2b1a8a9a2de4 -e RSCTF_DYNAMIC_FLAG_3f4b2acb970fdc61683244fd6e59784c1da77a96a13a12c4520dd7bcb484dacd3f {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
