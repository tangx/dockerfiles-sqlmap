FROM python:3.8.3-alpine

RUN apk add --no-cache git \
    bash \
    wget \
    curl \
    ca-certificates


RUN mkdir -p /python \
    && cd /python \
    && git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap

WORKDIR /python/sqlmap

ADD sqlmap.sh /usr/local/bin/sqlmap
RUN chmod +x /usr/local/bin/sqlmap

