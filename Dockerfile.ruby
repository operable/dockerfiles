FROM operable/alpine-base:0.3

ENV RUBY_VERSION 2.3.1-r0

RUN apk -U add \
    ruby=$RUBY_VERSION \
    ruby-dev=$RUBY_VERSION \
    ruby-json=$RUBY_VERSION \
    ruby-bundler=1.12.5-r0 \
