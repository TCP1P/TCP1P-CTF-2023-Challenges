FROM budtmo2/docker-android-pro:emulator_headless_10.0

USER root

RUN apt update
RUN apt install -y --fix-missing build-essential

WORKDIR /app
COPY . .

WORKDIR /app/ws-scrcpy
RUN npm install

WORKDIR /app
RUN chmod +x main.sh
RUN chown -R androidusr:androidusr /app/ws-scrcpy

EXPOSE 8000

USER androidusr
ENTRYPOINT ["/app/main.sh"]