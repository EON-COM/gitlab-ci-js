FROM node:17.2.0-alpine
LABEL version="0.5" \
    purpose=ci
RUN apk update && apk upgrade --no-cache && apk add --no-cache \
    curl    \
    git     \
    bash    \
    docker

RUN curl -sL https://taskfile.dev/install.sh | sh -s v2.5.0
