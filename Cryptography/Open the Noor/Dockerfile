FROM python:3.9.9



RUN apt update


RUN apt install socat -y

RUN useradd -m usero

ADD chall.py /home/usero/chall.py

ADD requirements.txt /home/usero/requirements.txt

RUN chmod 500 /home/usero/chall.py

RUN chown -R usero:root /home/usero

#ganti dr root ke usero
USER usero

WORKDIR /home/usero

RUN pip install -r requirements.txt --user

CMD socat TCP-L:10003,fork EXEC:"python3 ./chall.py",reuseaddr,stderr

#sudo docker-compose build
#sudo docker-compose up -d