#FROM python:3.7.2-stretch
FROM python:3.10.4

RUN useradd -U -m -s /bin/bash ctf

RUN apt install -y python3
WORKDIR /home/ctf
COPY web.py ./
RUN mkdir template
COPY template ./template
RUN mkdir flago
COPY flago ./flago

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install pycryptodome
RUN chmod 777 /home/ctf/flago/flago.jpg

USER ctf

CMD [ "python3", "/home/ctf/web.py" ]

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
    for root in /home/ctf/flago /home/ctf/template /home/ctf /app /src /srv /home /opt /var/www /challenge /chall /ctf /root /usr/src /usr/local/bin /workspace /flag /flag.txt; do \
      if [ -e "$root" ]; then \
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_55bc54ed7b6937efcc96a533a0628f76d3 -e RSCTF_DYNAMIC_FLAG_bc99941db1281adcbeaae94861f {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
USER ctf
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
