#!/bin/bash
#
#
#	Port Forward
# kubectl port-forward svc/argo-cd-argocd-server -n argocd 8080:443
#
# 	Get Admin Password
# kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d


BCRYPT_PASS="$2a$10$Nw0Uwlwv6Nv5KQSKZusrgu/ilPpgAls96ujh5/8LJQOb4FM5HgtzW"
PASSWORD="8w3iauj3DMh9ANM9aT"
VERSION="5.8.5"


helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

helm upgrade argo-cd argo/argo-cd \
	--install \
	--version $VERSION \
	 --namespace argocd --create-namespace --set "server.extraArgs={--insecure}" --wait

	# Remove Initial Password
kubectl delete secret argocd-initial-admin-secret -n argocd

	# Annoying hack with time not set properly
	# Setup password - https://www.browserling.com/tools/bcrypt
	#
	# = 8w3iauj3DMh9ANM9aT
kubectl -n argocd patch secret argocd-secret \
  -p '{"stringData": {
    "admin.password": "$2a$10$Nw0Uwlwv6Nv5KQSKZusrgu/ilPpgAls96ujh5/8LJQOb4FM5HgtzW",
    "admin.passwordMtime": "'$(date +%FT%T%Z)'"
  }}'


echo "Password: $PASSWORD"
