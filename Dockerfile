FROM frolvlad/alpine-oraclejdk8:slim

MAINTAINER think@hotmail.de

RUN apk --update add wget ca-certificates openssl

RUN wget -q https://languagetool.org/download/ngram-data/ngrams-en-20150817.zip
