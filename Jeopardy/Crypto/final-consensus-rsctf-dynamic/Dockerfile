# check=skip=JSONArgsRecommended
FROM python:3.9.9



RUN apt update


RUN apt install socat -y

RUN useradd -m usero

ADD chall.py /home/usero/chall.py

ADD requirements.txt /home/usero/requirements.txt

RUN chmod 500 /home/usero/chall.py

RUN chown -R usero:root /home/usero

#ganti dr root ke usero
USER usero

WORKDIR /home/usero

RUN pip install -r requirements.txt --user

CMD socat TCP-L:10001,fork EXEC:"python3 ./chall.py",reuseaddr,stderr

#sudo docker-compose build
#sudo docker-compose up -d

# RSCTF dynamic-flag compatibility layer. The build-time scan records
# exact marker-bearing files; runtime replacement is therefore bounded
# to those files instead of walking the image on every team start.
USER root
COPY rsctf-entrypoint.sh /usr/local/bin/rsctf-entrypoint
RUN set -eu; \
    chmod 0555 /usr/local/bin/rsctf-entrypoint; \
    : > /etc/rsctf-flag-targets; \
    for root in /home/usero/requirements.txt /home/usero/chall.py /home/usero /app /src /srv /home /opt /var/www /challenge /chall /ctf /root /usr/src /usr/local/bin /workspace /flag /flag.txt; do \
      if [ -e "$root" ]; then \
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_6b0c5adc549c026cf4c623e7bb658cf95a0432be30f5c893 -e RSCTF_DYNAMIC_FLAG_bf47da6ff0e9f88421924dd7ed1cdb57aed514f50 {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
USER usero
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
