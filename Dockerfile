From alpine:3.5

MAINTAINER Jimin Huang "huangjimin@whu.edu.cn"

ENV PACKAGES="\
    dumb-init \
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

RUN pip install nose

VOLUME ["/code"]
WORKDIR code

ENTRYPOINT dumb_init
