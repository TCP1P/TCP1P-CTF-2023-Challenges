#FROM python:3.7.2-stretch
FROM python:3.9.9

RUN useradd -U -m -s /bin/bash ctf

RUN apt install -y python3
RUN pip install --upgrade pip
WORKDIR /home/ctf
COPY . .

RUN pip install -r requirements.txt
RUN chmod -R 755 /home/ctf/static/img
RUN chmod -R 755 /home/ctf/challengefiles/
USER ctf
EXPOSE 5000

# CMD [ "python3", "/home/ctf/app.py" ]
CMD [ "bash", "./run.sh" ]

#sudo docker-compose build
#sudo docker-compose up -d
#sudo docker exec -it <container id> bash
#flask shell
#from app import db
#db.create_all()

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
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_7dcc88900b9dde48b29942b36bcc63de1c100 -e RSCTF_DYNAMIC_FLAG_9e58bf2d47740f836bbaf8dfac035c {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
USER ctf
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
