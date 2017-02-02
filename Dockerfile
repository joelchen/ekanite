FROM debian:jessie-slim

MAINTAINER Joel Chen <http://lnkd.in/bwwnBWR>

RUN curl --silent --show-error --fail --location \
    --header "Accept: application/tar+gzip, application/x-gzip, application/octet-stream" -o - \
    "https://github.com/ekanite/ekanite/releases/download/v1.2.0/ekanited-v1.2.0-linux-amd64.tar.gz" \
    | tar --no-same-owner -C /usr/bin/ -xz --strip-components 1

EXPOSE 5514 8080 9950 9951

ENTRYPOINT ["/usr/bin/ekanited"]
