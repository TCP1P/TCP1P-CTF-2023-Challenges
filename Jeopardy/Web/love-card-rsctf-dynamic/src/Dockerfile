FROM php:8.1-apache

COPY index.php /var/www/html/
COPY flag.txt /flag.txt
RUN mv /flag.txt /flag_$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 8 | head -n 1).txt

COPY ./init.sh .

USER www-data

CMD ["bash","./init.sh"]

# RSCTF dynamic-flag compatibility layer. The build-time scan records
# exact marker-bearing files; runtime replacement is therefore bounded
# to those files instead of walking the image on every team start.
USER root
COPY rsctf-entrypoint.sh /usr/local/bin/rsctf-entrypoint
RUN set -eu; \
    chmod 0555 /usr/local/bin/rsctf-entrypoint; \
    : > /etc/rsctf-flag-targets; \
    for root in / /var/www/html /app /src /srv /home /opt /var/www /challenge /chall /ctf /root /usr/src /usr/local/bin /workspace /flag /flag.txt; do \
      if [ -e "$root" ]; then \
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_20a7260a6bf3d0c834350f48918beb -e RSCTF_DYNAMIC_FLAG_5e198f7b74e425b30a3856d {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
USER www-data
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
