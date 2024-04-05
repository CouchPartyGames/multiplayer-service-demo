#!/bin/bash
#
# 	Find Available Chart Versions
# helm search repo --versions open-match/open-match


#helm repo add open-match https://open-match.dev/chart/stable
#helm repo update

helm upgrade open-match open-match/open-match \
    --install \
	--namespace open-match \
    --create-namespace \
	-f ../helm/external-values/open-match-local.yaml
