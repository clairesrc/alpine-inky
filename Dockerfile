FROM alpine:3.10

ENV TZ "America/Chicago"
ENV INKYDASH_SERVER_LOCATION "inkydash:5000"

ARG PUID=1001
ARG PGID=1001

RUN set -xe \
    && apk add --no-cache --purge python curl ca-certificates libjpeg-turbo-dev zlib-dev wiringpi python3-dev linux-headers font-noto freetype-dev libffi-dev openssl-dev build-base chromium \
    && pip3 install --no-cache --upgrade pyserial RPi.GPIO inky Pillow python-dotenv requests  \
    && rm -rf /var/cache/apk/* /tmp/*

