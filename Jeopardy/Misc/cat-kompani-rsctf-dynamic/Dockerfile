FROM ubuntu:lunar

EXPOSE 8000

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y && apt update --fix-missing
RUN apt-get install python3 socat -y

COPY src/cat /bin/cat
RUN chown root:root /bin/cat
RUN chmod +s /bin/cat

RUN mkdir /ctf

COPY src/chall.py /ctf/chall.py
RUN chmod +x /ctf/chall.py

COPY src/flag.txt /flag
RUN chown root:root /flag
RUN chmod 400 /flag

RUN chown -R 555 /ctf/
WORKDIR /ctf

RUN rm -rf /bin/bash /bin/dash /usr/bin/bash /usr/bin/dash

CMD ["socat", "TCP-LISTEN:8000,reuseaddr,fork","EXEC:/ctf/chall.py,su=nobody"]

# RSCTF dynamic-flag compatibility layer. The build-time scan records
# exact marker-bearing files; runtime replacement is therefore bounded
# to those files instead of walking the image on every team start.
USER root
COPY rsctf-entrypoint.sh /usr/local/bin/rsctf-entrypoint
RUN set -eu; \
    chmod 0555 /usr/local/bin/rsctf-entrypoint; \
    : > /etc/rsctf-flag-targets; \
    for root in /ctf/chall.py /bin/cat /app /src /srv /home /opt /var/www /challenge /chall /ctf /root /usr/src /usr/local/bin /workspace /flag /flag.txt; do \
      if [ -e "$root" ]; then \
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_09f7a1a815de0de16bd914837a606b3f839a0c10c63362a736a11457b38e0d5609f7a1a815de0de16bd91 -e RSCTF_DYNAMIC_FLAG_58c2b58bafcce2adee94700d064e85c64e4e24ca302e42b3a86462a6c64095fe58c2b58bafcce2 {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
