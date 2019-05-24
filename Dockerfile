FROM alpine:3.9
LABEL maintainer="hoenirvili <hoenirvili@gmail.com>" \
    version="0.11" \
    purpose=ci
RUN apk update && apk upgrade --no-cache && apk add --no-cache \
    curl    \
    git     \
    bash    \
    libc-dev \
    musl-dev \
    docker
RUN apk add go --update-cache --repository http://nl.alpinelinux.org/alpine/edge/community
RUN curl -sL https://taskfile.dev/install.sh | sh -s v2.5.0
RUN curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s v1.13.2
