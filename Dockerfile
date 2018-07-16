FROM python:3.6-alpine

WORKDIR /data/project
ADD requirements.txt .
RUN apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ add \
    curl bash git mariadb-dev build-base postgresql-dev && \
    pip install -r requirements.txt && \
    apk del mariadb-dev build-base && \
    apk add mariadb-client-libs
