FROM alpine:latest
MAINTAINER linxray@gmail.com

ENV WORKDIR /mnt/gulp-work
VOLUME ${WORKDIR}
WORKDIR ${WORKDIR}

RUN apk add -U nodejs
RUN rm -rf /var/cache/apk/*


RUN npm install --global gulp-cli
RUN export PATH=$(npm bin -g):${PATH}
CMD ["gulp", "--version"]
