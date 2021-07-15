FROM golang:1.16.6-alpine
LABEL maintainer="Johannes Bruederl <johannes.bruederl@eon.com>" version="0.9"
RUN apk update && apk upgrade --no-cache && apk add --no-cache \
    curl    \
    git     \
    bash    \
    docker \
    libc-dev
RUN apk add go --update-cache --repository http://nl.alpinelinux.org/alpine/edge/community
RUN curl -sL https://taskfile.dev/install.sh | sh -s v2.8.0
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.41.1
