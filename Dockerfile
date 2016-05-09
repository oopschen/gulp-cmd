FROM alpine:latest
MAINTAINER linxray@gmail.com

ENV WORKDIR /mnt/gulp-work
ENV NODE_VERSION 4.3.0-r0
VOLUME ${WORKDIR}
WORKDIR ${WORKDIR}

RUN apk add -U nodejs=${NODE_VERSION}
RUN apk add -U git
RUN rm -rf /var/cache/apk/*

RUN npm update --global npm
RUN npm install --global gulp-cli
RUN export PATH=$(npm bin -g):${PATH}
CMD ["gulp", "--version"]
