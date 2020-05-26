FROM python:3.8.3-alpine

RUN apk add --no-cache git \
    bash \
    wget \
    curl \
    ca-certificates


WORKDIR /python/sqlmap

ADD sqlmap.sh /usr/local/bin/sqlmap
RUN chmod +x /usr/local/bin/sqlmap \
    && ln -sf /usr/local/bin/sqlmap /usr/local/bin/sm

CMD ["/bin/bash"]

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

## update

RUN mkdir -p /python \
    && cd /python \
    && git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap
