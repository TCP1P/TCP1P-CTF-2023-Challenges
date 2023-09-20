FROM node:alpine

WORKDIR /home/ctf/app

COPY . .

RUN adduser -D ctf
RUN chown ctf:ctf /home/ctf/app/node_modules/* -R

USER ctf

EXPOSE 8080

CMD [ "node", "index.mjs" ]
