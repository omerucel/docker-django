FROM python:3.6-alpine

Add requirements.txt .
RUN apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ add \
    curl \
    bash \
    git && \
    pip install -r requirements.txt
WORKDIR /data/project
