FROM python:alpine

RUN apk add --update libcrypto1.1 libcrypto3 libsrt

RUN set -xe \
    && apk add --no-cache --purge curl ca-certificates libjpeg-turbo-dev zlib-dev wiringpi python3-dev linux-headers font-noto freetype-dev libffi-dev openssl-dev build-base \
    && pip3 install --no-cache --upgrade pyserial RPi.GPIO inky Pillow python-dotenv requests  \
    && rm -rf /var/cache/apk/* /tmp/*

