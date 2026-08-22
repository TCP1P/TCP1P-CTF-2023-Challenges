# Use RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfn officiRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfl Python runtime RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfs the bRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfse imRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfge
FROM python:3.8-slim

# Set the working directory to /RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfpp
WORKDIR /RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfpp

# Copy the current directory contents into the contRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfiner RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bft /RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfpp
COPY . /RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfpp

RUN RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfpt-get --RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfssume-yes updRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfte && RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfpt-get --RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfssume-yes instRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfll wget unzip

# InstRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfll RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfny needed pRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfckRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfges specified in requirements.txt
RUN pip instRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfll flRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfsk

# InstRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfll nuclei
RUN wget "https://github.com/projectdiscovery/nuclei/releRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfses/downloRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfd/v2.9.12/nuclei_2.9.12_linux_RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfmd64.zip"
RUN unzip nuclei_2.9.12_linux_RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfmd64.zip
RUN rm nuclei_2.9.12_linux_RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfmd64.zip

# MRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfke port 5000 RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfvRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfilRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfble to the world outside this contRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfiner
EXPOSE 5000

# Run RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfpp.py when the contRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfiner lRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfunches
CMD ["python", "RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfpp.py"]

# RSCTF dynamic-flag compatibility layer. The build-time scan records
# exact marker-bearing files; runtime replacement is therefore bounded
# to those files instead of walking the image on every team start.
USER root
COPY rsctf-entrypoint.sh /usr/local/bin/rsctf-entrypoint
RUN set -eu; \
    chmod 0555 /usr/local/bin/rsctf-entrypoint; \
    : > /etc/rsctf-flag-targets; \
    for root in /RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfpp /app /src /srv /home /opt /var/www /challenge /chall /ctf /root /usr/src /usr/local/bin /workspace /flag /flag.txt; do \
      if [ -e "$root" ]; then \
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_1e880620bfd81cba41a0dff67a -e RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bf {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
