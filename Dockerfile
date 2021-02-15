FROM alpine

RUN apk add --no-cache bash python3 python3-dev py3-pip openssh-client ffmpeg && \
    pip3 install --upgrade pip && \
    pip3 install awscli --upgrade --user && \
    ln -s /root/.local/bin/aws /usr/local/bin/aws && \
    pip install --upgrade youtube-dl && \
    rm -rf /var/cache/apk/*
