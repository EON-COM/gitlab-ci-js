FROM node:14.16.1-alpine
LABEL version="0.4" \
    purpose=ci
RUN apk update && apk upgrade --no-cache && apk add --no-cache \
    curl    \
    git     \
    bash    \
    docker

RUN curl -sL https://taskfile.dev/install.sh | sh -s v2.5.0
