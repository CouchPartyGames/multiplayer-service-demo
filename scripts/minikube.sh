#!/bin/bash

CPU="4"
MEMORY="6144"
K8S_VERSION="v1.24.3"

NAME=""

#minikube start -p minikube-agones --kubernetes-version v1.22.9 --driver docker --memory $MEMORY --cpus $CPU
minikube start -p minikube-argocd --kubernetes-version "$K8S" --driver docker --memory $MEMORY --cpus $CPU
