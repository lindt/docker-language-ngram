FROM frolvlad/alpine-oraclejdk8:slim

MAINTAINER think@hotmail.de

ENV NGRAMS_VERSION=20150817

RUN apk --update add wget ca-certificates openssl \
 && wget -q https://languagetool.org/download/ngram-data/ngrams-en-${NGRAMS_VERSION}.zip \
 && mkdir /ngrams \
 && unzip -q ngrams-en-${NGRAMS_VERSION}.zip -d /ngrams \
 && rm ngrams-en-${NGRAMS_VERSION}.zip \
 && apk del wget ca-certificates openssl \
 && rm -rf /var/cache/apk
