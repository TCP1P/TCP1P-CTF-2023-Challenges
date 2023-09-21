FROM denoland/deno:alpine


COPY main.js .
RUN deno cache main.js

COPY . .
RUN mv ./flag.txt /flag.txt

EXPOSE 8080

CMD [ "deno", "run", "-A", "--no-prompt", "--unstable", "main.js" ]
