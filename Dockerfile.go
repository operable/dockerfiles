FROM operable/alpine-base:0.2

ENV GO_PACKAGE_VERSION 1.6.3-r0
ENV GOPATH /gopath

RUN apk -U add \
    go=$GO_PACKAGE_VERSION \
    go-tools=$GO_PACKAGE_VERSION

RUN go get -u github.com/kardianos/govendor
RUN go get -u github.com/golang/lint/golint
