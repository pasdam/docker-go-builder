ARG GO_VERSION=1.13.8-alpine3.11

FROM golang:${GO_VERSION}

RUN apk update --no-cache && \
    apk add \
        git \
        make

RUN go get -u golang.org/x/lint/golint
