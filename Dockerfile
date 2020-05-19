FROM python:3.8.3-alpine

RUN apk add --no-cache git

RUN mkdir -p /python \
    && cd /python \
    && git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap

WORKDIR /python/sqlmap

CMD ["python", "sqlmap.py"]

