FROM ubuntu:24.04

EXPOSE 8000

RUN apt-get update \
    && apt-get install -y --no-install-recommends socat \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /pwn
COPY src/flag.txt /pwn/flag.txt
COPY dist/main /pwn/main
COPY dist/main /pwn/main
WORKDIR /pwn

RUN chown -R root:root /pwn \
    && chmod 0755 /pwn /pwn/main \
    && chmod 0644 /pwn/flag.txt

USER root
COPY rsctf-entrypoint.sh /usr/local/bin/rsctf-entrypoint
RUN set -eu; \
    chmod 0555 /usr/local/bin/rsctf-entrypoint; \
    : > /etc/rsctf-flag-targets; \
    for target in /pwn/main /pwn/flag.txt; do \
      if [ -f "$target" ] && grep -qF -e RSCTF_DYNAMIC_FLAG_afb4b93f801b -e RSCTF_DYNAMIC_FLAG_4371b "$target"; then \
        printf '%s\n' "$target" >> /etc/rsctf-flag-targets; \
        chmod a+w "$target"; \
      fi; \
    done

CMD ["socat", "TCP-LISTEN:8000,reuseaddr,fork", "EXEC:/pwn/main,su=nobody"]

ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
