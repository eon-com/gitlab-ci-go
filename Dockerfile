FROM golang:1.13-alpine
LABEL maintainer="Salvatore <salvatore-elio.giulitti@eon-romania.ro>" \
    version="0.6" \
    purpose=ci
RUN apk update && apk upgrade --no-cache && apk add --no-cache \
    curl    \
    git     \
    bash    \
    docker \
    libc-dev
RUN apk add go --update-cache --repository http://nl.alpinelinux.org/alpine/edge/community
RUN curl -sL https://taskfile.dev/install.sh | sh -s v2.8.0
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.24.0
