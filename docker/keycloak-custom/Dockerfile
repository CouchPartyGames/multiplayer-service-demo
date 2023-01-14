FROM alpine:latest
LABEL maintainer="couchpartygames"

RUN mkdir -p /keycloak/themes /keycloak/providers

WORKDIR /keycloak

COPY ./themes ./themes
COPY ./providers ./providers
