#!/bin/bash

helm install postgresql bitnami/postgresql --namespace keycloak --create-namespace -f postgresql-local.yaml
