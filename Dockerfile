FROM alpine

RUN apk add --no-cache curl openssl bash python3 python3-dev py3-pip ruby ruby-json ruby-etc openssh-client aws-cli ffmpeg rsync git && \
    pip3 install --upgrade pip && \
    pip install --default-timeout=1000 --upgrade youtube-dl && \
    gem install r10k && \
    rm -rf /var/cache/apk/* && \
    rm -rf ~/.tfenv && git clone https://github.com/tfutils/tfenv.git ~/.tfenv && \
    /root/.tfenv/bin/tfenv install 1.0.3 && /root/.tfenv/bin/tfenv use 1.0.3 && ln -sf ~/.tfenv/bin/* /usr/local/bin
