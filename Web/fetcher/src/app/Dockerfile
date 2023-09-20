FROM node:alpine

WORKDIR /home/ctf/app


RUN adduser -D ctf
RUN chown ctf:ctf /home/ctf/app

COPY ./run.sh .
RUN chmod -x run.sh

USER ctf

COPY package.json .
RUN npm install

COPY . .

EXPOSE 8080

CMD [ "/bin/sh", "./run.sh" ]
