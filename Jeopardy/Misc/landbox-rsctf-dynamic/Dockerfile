# check=skip=JSONArgsRecommended
FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y install lua5.4 socat

RUN mkdir -p /ctf
WORKDIR /ctf
COPY main.lua .

COPY flag.txt /flag.txt
RUN chmod 744 /flag.txt
RUN chown root:root /flag.txt
RUN mv /flag.txt /flag-`md5sum /flag.txt | awk '{print $1}'`.txt

EXPOSE 1337
CMD socat TCP-LISTEN:1337,reuseaddr,fork 'EXEC:lua main.lua'

# docker build -t landbox .
# docker run --restart always --name landbox -p <port>:1337 -itd landbox

# RSCTF dynamic-flag compatibility layer. The build-time scan records
# exact marker-bearing files; runtime replacement is therefore bounded
# to those files instead of walking the image on every team start.
USER root
COPY rsctf-entrypoint.sh /usr/local/bin/rsctf-entrypoint
RUN set -eu; \
    chmod 0555 /usr/local/bin/rsctf-entrypoint; \
    : > /etc/rsctf-flag-targets; \
    for root in /app /src /srv /home /opt /var/www /challenge /chall /ctf /root /usr/src /usr/local/bin /workspace /flag /flag.txt; do \
      if [ -e "$root" ]; then \
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_4faf6d195614407c9c8314b0df5f -e RSCTF_DYNAMIC_FLAG_68a2e24f8fbc38073f10b {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
