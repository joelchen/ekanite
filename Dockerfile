FROM alpine:latest

MAINTAINER Joel Chen <http://lnkd.in/bwwnBWR>

RUN apk --update --no-cache add wget && wget https://github.com/ekanite/ekanite/releases/download/v1.2.0/ekanited-v1.2.0-linux-amd64.tar.gz && \
    tar -xzf ekanited-v1.2.0-linux-amd64.tar.gz && mv ekanited-v1.1.0-linux-amd64/ekanited /usr/bin/ekanited && \
    rm -rf ekanited-v1.2.0-linux-amd64.tar.gz ekanited-v1.2.0-linux-amd64

EXPOSE 5514 8080 9950 9951

ENTRYPOINT ["/usr/bin/ekanited"]
