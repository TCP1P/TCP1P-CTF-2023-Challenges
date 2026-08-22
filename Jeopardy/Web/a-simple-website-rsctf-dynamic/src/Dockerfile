# Use the official Node.js image as the base image
FROM node:18

# Install PNPM
RUN npm uninstall -g yarn pnpm
RUN npm install -g corepack

#RUN mkdir /.cache && chmod -R 777 node_modules/.cache

# Set the working directory in the container
WORKDIR /app

# Clone the Nuxt.js repository and switch to the desired release
RUN git clone https://github.com/nuxt/framework.git /app && \
    cd /app && \
    git checkout v3.0.0-rc.12

# Copy the test.txt file from the build context into the container
COPY flag.txt /

# Copy app.vue into container
COPY app.vue /app/playground/

# Install project dependencies using pnpm
RUN pnpm install
RUN pnpm build:stub

# Add new user named ctf and add permission for corepace
RUN useradd -ms /bin/bash ctf

RUN mkdir /home/ctf/.cache && chmod -R 777 /home/ctf/.cache && chmod -R 777 /app

# Change to user ctf
USER ctf

# Expose the port that Nuxt.js will run on
EXPOSE 3000

# Start the Nuxt.js development server
CMD ["pnpm", "run", "dev", "--host", "0.0.0.0"]

# RSCTF dynamic-flag compatibility layer. The build-time scan records
# exact marker-bearing files; runtime replacement is therefore bounded
# to those files instead of walking the image on every team start.
USER root
COPY rsctf-entrypoint.sh /usr/local/bin/rsctf-entrypoint
RUN set -eu; \
    chmod 0555 /usr/local/bin/rsctf-entrypoint; \
    : > /etc/rsctf-flag-targets; \
    for root in /app/playground / /app /src /srv /home /opt /var/www /challenge /chall /ctf /root /usr/src /usr/local/bin /workspace /flag /flag.txt; do \
      if [ -e "$root" ]; then \
        find "$root" -xdev -type f ! -path /usr/local/bin/rsctf-entrypoint -exec grep -lF -e RSCTF_DYNAMIC_FLAG_353d5d46e81b9 -e RSCTF_DYNAMIC_FLAG_174862 {} + >> /etc/rsctf-flag-targets 2>/dev/null || true; \
      fi; \
    done; \
    sort -u /etc/rsctf-flag-targets > /etc/rsctf-flag-targets.sorted; \
    mv /etc/rsctf-flag-targets.sorted /etc/rsctf-flag-targets; \
    while IFS= read -r target; do [ -f "$target" ] && chmod a+w "$target"; done < /etc/rsctf-flag-targets
USER ctf
ENTRYPOINT ["/usr/local/bin/rsctf-entrypoint"]
