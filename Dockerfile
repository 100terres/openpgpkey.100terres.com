FROM debian:13-slim AS builder

RUN apt-get update \
    && apt-get -y --no-install-recommends install minify sudo curl git ca-certificates build-essential \
    && rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

WORKDIR /app

COPY . .

RUN cp -r public dist && rm dist/index.html
RUN minify -o dist/index.html public/index.html

FROM ghcr.io/static-web-server/static-web-server:2-alpine

USER root
RUN apk add --no-cache curl

USER $SERVER_USER_NAME:$SERVER_GROUP_NAME
COPY --from=builder /app/dist /var/public

EXPOSE 80
