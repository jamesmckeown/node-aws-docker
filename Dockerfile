FROM node:11.10.0-alpine

LABEL maintainer="jamesmckeown@gmail.com"

# Install awscli and build tools for node-gyp
RUN \
	mkdir -p /aws && \
	apk -Uuv add groff less python py-pip \
	gcc make g++ zlib-dev && \
	pip install awscli && \
	apk --purge -v del py-pip && \
	apk --purge -v del py-setuptools && \
	rm /var/cache/apk/*
