FROM alpine:latest

RUN apk update && apk upgrade

RUN apk add libatomic readline readline-dev libxml2 libxml2-dev \
        ncurses-terminfo-base ncurses-terminfo \
        libxslt libxslt-dev zlib-dev zlib \
        ruby ruby-dev ruby-bundler yaml yaml-dev \
        libffi-dev build-base git nodejs \
        ruby-io-console ruby-irb ruby-json ruby-rake ruby-bigdecimal ruby-webrick

RUN gem install --no-document rdoc
RUN gem install --no-document bundler jekyll

RUN rm -rf /root/src /tmp/* /usr/share/man /var/cache/apk/*

RUN mkdir /data
WORKDIR /data
RUN git clone https://github.com/clarklab/chowdown.git

WORKDIR /data/chowdown

ADD run.sh /data/chowdown/run.sh
RUN chmod +x /data/chowdown/run.sh
CMD /data/chowdown/run.sh