# check=skip=JSONArgsRecommended
#FROM python:3.7.2-stretch
FROM python:3.10.4

RUN useradd -U -m -s /bin/bash ctf

RUN apt-get update
RUN apt install -y python3 socat
WORKDIR /home/ctf
COPY eclairs.py ./
COPY flag.txt ./

RUN chmod 500 /home/ctf/eclairs.py
RUN chown -R ctf:root /home/ctf

RUN pip install --upgrade pip
RUN pip install pycryptodome
RUN pip install libnum
RUN pip install sympy

USER ctf

CMD socat TCP-L:13341,fork EXEC:"python3 /home/ctf/eclairs.py",reuseaddr,stderr

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
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_880ed21c0e9bca9d858136347bd -e RSCTF_DYNAMIC_FLAG_5bbd885150a5daec35cd {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
USER ctf
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
