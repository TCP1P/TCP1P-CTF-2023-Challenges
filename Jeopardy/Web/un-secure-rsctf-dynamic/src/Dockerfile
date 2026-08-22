# user php:apache as an container image
FROM php:apache

# use /var/www/html as working directory
WORKDIR /var/www/html

# copy all host file in cwd to container cwd
COPY . .

# move flag to root directory with random name
RUN mv flag.txt 182939124819238912571292389218129123.txt

# add new user named ctf
RUN useradd -ms /bin/bash ctf

# change to user ctf
USER ctf

# declare runing port
EXPOSE 80

# run apache2 service
CMD ["apache2-foreground"]

# RSCTF dynamic-flag compatibility layer. The build-time scan records
# exact marker-bearing files; runtime replacement is therefore bounded
# to those files instead of walking the image on every team start.
USER root
COPY rsctf-entrypoint.sh /usr/local/bin/rsctf-entrypoint
RUN set -eu; \
    chmod 0555 /usr/local/bin/rsctf-entrypoint; \
    : > /etc/rsctf-flag-targets; \
    for root in /var/www/html /app /src /srv /home /opt /var/www /challenge /chall /ctf /root /usr/src /usr/local/bin /workspace /flag /flag.txt; do \
      if [ -e "$root" ]; then \
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_a6b404b22411ee1b9c880554 -e RSCTF_DYNAMIC_FLAG_656b890fa8fdf0735 {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
USER ctf
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
