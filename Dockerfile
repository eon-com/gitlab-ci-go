FROM golang:1.11-alpine
LABEL maintainer="Salvatore <salvatore-elio.giulitti@eon-romania.ro>" \
    version="0.3" \
    purpose=ci
RUN apk update && apk upgrade --no-cache && apk add --no-cache \
    curl    \
    git     \
    bash    \
    docker
RUN apk add go --update-cache --repository http://nl.alpinelinux.org/alpine/edge/community
RUN curl -sL https://taskfile.dev/install.sh | sh -s v2.5.0
RUN curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s v1.17.1
