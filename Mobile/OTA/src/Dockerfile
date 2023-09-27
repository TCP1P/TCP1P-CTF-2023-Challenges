FROM ubuntu:latest

WORKDIR /

SHELL ["/bin/bash", "-c"]   

RUN apt update
RUN apt install -y --fix-missing curl wget unzip net-tools build-essential default-jdk qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils

ARG ARCH="x86" 
ARG TARGET="google_apis"  
ARG API_LEVEL="29" 
ARG BUILD_TOOLS="33.0.2"
ARG ANDROID_ARCH=${ANDROID_ARCH_DEFAULT}
ARG ANDROID_API_LEVEL="android-${API_LEVEL}"
ARG ANDROID_APIS="${TARGET};${ARCH}"
ARG EMULATOR_PACKAGE="system-images;${ANDROID_API_LEVEL};${ANDROID_APIS}"
ARG PLATFORM_VERSION="platforms;${ANDROID_API_LEVEL}"
ARG BUILD_TOOL="build-tools;${BUILD_TOOLS}"
ARG ANDROID_CMD="commandlinetools-linux-8092744_latest.zip"
ARG ANDROID_SDK_PACKAGES="${EMULATOR_PACKAGE} ${PLATFORM_VERSION} ${BUILD_TOOL} platform-tools"

ENV ANDROID_SDK_ROOT=/opt/android
ENV ANDROID_HOME=$ANDROID_SDK_ROOT
ENV PATH "$PATH:$ANDROID_SDK_ROOT/cmdline-tools/tools:$ANDROID_SDK_ROOT/cmdline-tools/tools/bin:$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/tools/bin:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/build-tools/${BUILD_TOOLS}"
ENV DOCKER="true"

RUN wget https://dl.google.com/android/repository/${ANDROID_CMD} -P /tmp && \
              unzip -d $ANDROID_SDK_ROOT /tmp/$ANDROID_CMD && \
              mkdir -p $ANDROID_SDK_ROOT/cmdline-tools/tools && cd $ANDROID_SDK_ROOT/cmdline-tools &&  mv NOTICE.txt source.properties bin lib tools/  && \
              cd $ANDROID_SDK_ROOT/cmdline-tools/tools && ls

RUN yes Y | sdkmanager --licenses 
RUN yes Y | sdkmanager --verbose --no_https ${ANDROID_SDK_PACKAGES} 

ARG EMULATOR_NAME="nexus"
ARG EMULATOR_DEVICE="Nexus 6"
ENV EMULATOR_NAME=$EMULATOR_NAME
ENV DEVICE_NAME=$EMULATOR_DEVICE
RUN echo "no" | avdmanager --verbose create avd --force --name "${EMULATOR_NAME}" --device "${EMULATOR_DEVICE}" --package "${EMULATOR_PACKAGE}"

ARG NODE_VERSION=18
RUN apt-get update -yq \
    && apt-get install -yq ca-certificates curl gnupg \
    && mkdir -p /etc/apt/keyrings \
    && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg \
    && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_VERSION.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list \
    && apt-get update -yq \
    && apt-get install nodejs -yq \
    && npm install -g npm

COPY . /
WORKDIR /ws-scrcpy

RUN npm install

WORKDIR /
RUN chmod +x main.sh init_emu.sh start_emu.sh

EXPOSE 8000
CMD ["/bin/bash", "-c", "nohup ./main.sh & while [ ! -f nohup.out ]; do sleep 1; done && tail -f nohup.out"]