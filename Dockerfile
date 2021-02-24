FROM python:3.8.8-alpine3.13

ENV LANG C.UTF-8

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk update && apk add --no-cache libcurl libxslt && \
    apk add --no-cache --virtual .build-dependencies g++ gcc musl-dev libxslt-dev jpeg-dev zlib-dev build-base curl-dev && \
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple/ python-dateutil && \
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple/ lxml && \
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple/ pycurl && \
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple/ PyExecJS && \
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple/ logbook && \
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple/ PyMySQL && \
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple/ pillow && \
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple/ redis && \
    apk del .build-dependencies && rm -rf /var/cache/* && rm -rf /root/.cache && rm -rf /root/.ash_history
