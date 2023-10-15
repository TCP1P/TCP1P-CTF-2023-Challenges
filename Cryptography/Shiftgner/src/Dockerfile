#FROM python:3.7.2-stretch
FROM python:3.10.4

RUN useradd -U -m -s /bin/bash ctf

RUN apt-get update && apt-get upgrade -y
RUN apt install -y python3 socat
WORKDIR /home/ctf
COPY shiftgner.py ./ 
COPY flag.txt ./ 

RUN chmod 500 /home/ctf/shiftgner.py
RUN chown -R ctf:root /home/ctf

USER ctf

CMD socat TCP-L:13342,fork EXEC:"python3 /home/ctf/shiftgner.py",reuseaddr,stderr