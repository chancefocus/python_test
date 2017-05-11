From alpine:3.5

MAINTAINER Jimin Huang "huangjimin@whu.edu.cn"

ENV PACKAGES="\
    bash \
    git \
    python \
    python-dev \
"

RUN apk add --no-cache $PACKAGES && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    rm -r /root/.cache
