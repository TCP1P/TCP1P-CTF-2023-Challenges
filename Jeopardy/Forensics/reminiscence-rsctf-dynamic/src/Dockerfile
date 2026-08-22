FROM ubuntu:22.04

RUN apt-get update && \
    apt-get -y install python3 \
    socat

RUN     useradd ctf
WORKDIR /home/ctf

COPY questions.py      /home/ctf/

RUN chown -R root:root  /home/ctf
RUN chmod -R 555        /home/ctf

EXPOSE 1337
# Original final-stage ENTRYPOINT is wrapped by RSCTF at runtime.

# RSCTF dynamic-flag compatibility layer. The build-time scan records
# exact marker-bearing files; runtime replacement is therefore bounded
# to those files instead of walking the image on every team start.
USER root
COPY rsctf-entrypoint.sh /usr/local/bin/rsctf-entrypoint
RUN set -eu; \
    chmod 0555 /usr/local/bin/rsctf-entrypoint; \
    : > /etc/rsctf-flag-targets; \
    for root in /home/ctf /app /src /srv /home /opt /var/www /challenge /chall /ctf /root /usr/src /usr/local/bin /workspace /flag /flag.txt; do \
      if [ -e "$root" ]; then \
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_ab215d13eefd5f6d5da90a14ab2b9fe92c281efe8 -e RSCTF_DYNAMIC_FLAG_4c166c943579f3a6efdc324f1fb71c0e3b {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint", "socat", "TCP-LISTEN:1337,reuseaddr,fork,nodelay,su=ctf", "EXEC:'timeout 60 python3 questions.py'"]
