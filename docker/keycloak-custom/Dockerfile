FROM alpine:latest
LABEL maintainer="couchpartygames"

RUN mkdir -p /keycloak/{themes,providers} && \
	cp -rv themes/* /keycloak/themes && \
	cp -rv providers/* /keycloak/providers

WORKDIR /keycloak
