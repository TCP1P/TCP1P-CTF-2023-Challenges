FROM python:3.11-slim-bookworm

ENV PYTHONUNBUFFERED=1
WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates wget unzip \
    && rm -rf /var/lib/apt/lists/*
COPY app.py custom-templates.yaml ./
COPY templates/ ./templates/
RUN pip install --no-cache-dir Flask==2.3.3 \
    && wget -q https://github.com/projectdiscovery/nuclei/releases/download/v2.9.12/nuclei_2.9.12_linux_amd64.zip \
    && unzip -q nuclei_2.9.12_linux_amd64.zip \
    && chmod 0555 nuclei \
    && rm nuclei_2.9.12_linux_amd64.zip \
    && useradd --system --create-home appuser \
    && chown -R appuser:appuser /app

EXPOSE 5000
HEALTHCHECK --interval=30s --timeout=3s --start-period=10s --retries=3 \
    CMD python -c "import urllib.request; urllib.request.urlopen('http://127.0.0.1:5000/', timeout=2).read()" || exit 1
USER appuser
CMD ["python", "app.py"]

# RSCTF dynamic-flag compatibility layer. The application reads RSCTF_FLAG
# directly; this wrapper also supports any literal flag markers retained in files.
USER root
COPY rsctf-entrypoint.sh /usr/local/bin/rsctf-entrypoint
RUN chmod 0555 /usr/local/bin/rsctf-entrypoint
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
