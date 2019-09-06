FROM alpine

RUN apk add --no-cache bash python3 python3-dev py3-pip && \
    pip3 install --upgrade pip && \
    pip3 install awscli --upgrade --user && \
    rm -rf /var/cache/apk/*
