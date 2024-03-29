#!/bin/bash

CPU="8"
MEMORY="12288"

#K8S_VERSION="v1.24.3"
#--kubernetes-version "$K8S"

NAME="openmatch"

minikube start -p $NAME \
 --driver docker --memory $MEMORY --cpus $CPU
