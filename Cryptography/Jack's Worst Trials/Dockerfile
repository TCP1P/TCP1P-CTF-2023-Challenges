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
