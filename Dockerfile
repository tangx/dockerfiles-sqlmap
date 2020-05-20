FROM python:3.8.3-alpine

RUN apk add --no-cache git

RUN mkdir -p /python \
    && cd /python \
    && git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap

WORKDIR /root

ADD sqlmap.sh /usr/local/bin/sqlmap
RUN chmod +x /usr/local/bin/sqlmap

