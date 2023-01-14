FROM alpine:latest
LABEL maintainer="couchpartygames"

RUN mkdir -p /keycloak/{themes,providers} 

WORKDIR /keycloak

COPY ./themes ./themes
COPY ./providers ./providers
