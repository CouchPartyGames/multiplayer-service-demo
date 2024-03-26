#!/bin/bash

helm upgrade keycloak bitnami/keycloak --install --create-namespace --namespace keycloak -f keycloak-bitnami-local.yaml
