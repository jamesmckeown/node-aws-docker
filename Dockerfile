FROM python:3.7.2-alpine3.9 as awscli

# Install awscli
RUN pip install awscli

FROM node:11.10.0-alpine

LABEL maintainer="jamesmckeown@gmail.com"

COPY --from=awscli /usr/bin/aws /usr/bin/aws
