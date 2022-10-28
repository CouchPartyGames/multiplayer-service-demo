#!/bin/bash
#
# 	Find Available Chart Versions
# helm search repo --versions open-match/open-match

OM_VERSION="1.3.0"

helm repo add open-match https://open-match.dev/chart/stable
helm repo update
helm install open-match open-match/open-match \
	--namespace open-match --create-namespace --version $VERSION \
	--set open-match-customize.enabled=true \
	--set open-match-customize.evaluator.enabled=true \
	--set open-match-override.enabled=true 
