FROM docker.pkg.github.com/agilesyndrome/syndromeos-base/syndromeos:latest

ARG nodeVersion=12.14.0
ENV NODE_VERSION=${nodeVersion}

RUN apt-get update \
 && apt-get install -y \
   xz-utils

WORKDIR /nodejs
RUN curl -LO https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.xz \
 && tar --strip-components 1 -xf ./node-v${NODE_VERSION}-linux-x64.tar.xz

ENV PATH ${PATH}:/nodejs/bin

COPY ./src /data/src

RUN cd /data/src \
 && npm install

WORKDIR /app

