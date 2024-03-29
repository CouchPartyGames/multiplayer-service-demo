#!/bin/bash
#
#	Find Available Chart Versions
# helm search repo --versions agones/agones

helm repo add agones https://agones.dev/chart/stable
helm repo update

kubectl create namespace xbox
helm upgrade agones agones/agones \
	--install \
	--namespace agones-system \
	--create-namespace \
	--set "gameservers.namespaces={default,xbox}"
