From alpine:3.5

MAINTAINER Jimin Huang "huangjimin@whu.edu.cn"

RUN apk add --no-cache python && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    rm -r /root/.cache
