#FROM python:3.7.2-stretch
FROM python:3.10.4

RUN useradd -U -m -s /bin/bash ctf

RUN apt-get update && apt-get upgrade -y
RUN apt install -y python3 socat
WORKDIR /home/ctf
COPY eclairs.py ./ 
COPY flag.txt ./ 

RUN chmod 500 /home/ctf/eclairs.py
RUN chown -R ctf:root /home/ctf

RUN pip install --upgrade pip
RUN pip install pycryptodome
RUN pip install libnum
RUN pip install sympy

USER ctf

CMD socat TCP-L:13341,fork EXEC:"python3 /home/ctf/eclairs.py",reuseaddr,stderr