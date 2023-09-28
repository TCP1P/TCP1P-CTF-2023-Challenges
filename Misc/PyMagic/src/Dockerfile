FROM pwn.red/jail
COPY --from=python:latest / /srv
COPY pymagic.py /srv/app/run
COPY flag /srv/flag

RUN mv /srv/flag /srv/flag_$(dd if=/dev/urandom count=1 | sha1sum | cut -c1-40)
RUN chmod 755 /srv/app/run