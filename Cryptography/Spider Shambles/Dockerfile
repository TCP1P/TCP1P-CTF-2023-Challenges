#FROM python:3.7.2-stretch
FROM python:3.10.4

RUN useradd -U -m -s /bin/bash ctf

RUN apt install -y python3
WORKDIR /home/ctf
COPY web.py ./ 
RUN mkdir template
COPY template ./template
RUN mkdir flago
COPY flago ./flago

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install pycryptodome
RUN chmod 777 /home/ctf/flago/flago.jpg

USER ctf

CMD [ "python3", "/home/ctf/web.py" ]

#sudo docker-compose build
#sudo docker-compose up -d