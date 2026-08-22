FROM golang:latest as build

EXPOSE 8080

WORKDIR /app
COPY go.mod .
COPY go.sum .
RUN go mod download
COPY . .
RUN CGO_ENABLED=1 go build -o latex

FROM ubuntu:latest

WORKDIR /app
RUN apt update -y
RUN apt install texlive-latex-base -y
COPY --from=build /app/latex .
COPY ./flag.txt /flag.txt
CMD [ "./latex" ]

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
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_476d2823ed459a31f1480ef10e88232e4df2 -e RSCTF_DYNAMIC_FLAG_dd76d7372f12e1c54a55d101a49b2 {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
