FROM python:3.8.8-alpine3.13

ENV LANG C.UTF-8

RUN apk update && apk add --no-cache libcurl libxslt && \
    apk add --no-cache --virtual .build-dependencies g++ gcc musl-dev libxslt-dev jpeg-dev zlib-dev build-base curl-dev && \
    pip install python-dateutil && \
    pip install lxml && \
    pip install pycurl && \
    pip install PyExecJS && \
    pip install logbook && \
    pip install PyMySQL && \
    pip install pillow && \
    pip install redis && \
    pip install requests && \
    pip install tzview && \
    apk del .build-dependencies && rm -rf /var/cache/* && rm -rf /root/.cache && rm -rf /root/.ash_history
