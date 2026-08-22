FROM budtmo2/docker-android-pro:emulator_headless_10.0

USER root

RUN apt update
RUN apt install -y --fix-missing build-essential

WORKDIR /app
COPY . .

WORKDIR /app/ws-scrcpy
RUN npm install

WORKDIR /app
RUN chmod +x main.sh
RUN chown -R androidusr:androidusr /app/ws-scrcpy

EXPOSE 8000

USER androidusr
# Original final-stage ENTRYPOINT is wrapped by RSCTF at runtime.

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
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_6c1767d4a22 -e RSCTF_DYNAMIC_FLAG_ee91 {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
USER androidusr
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint", "/app/main.sh"]
