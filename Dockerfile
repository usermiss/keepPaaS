FROM alpine:edge

RUN apk update && \
    apk add --no-cache caddy curl wget && \
    rm -rf /var/cache/apk/*

COPY ./main /main

WORKDIR /main

CMD sh start.sh
