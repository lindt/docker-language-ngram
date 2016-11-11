FROM frolvlad/alpine-oraclejdk8:slim

MAINTAINER think@hotmail.de

RUN apk --update add wget ca-certificates openssl
