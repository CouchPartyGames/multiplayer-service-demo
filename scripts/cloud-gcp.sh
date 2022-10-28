#!/bin/bash


gcloud container clusters create [CLUSTER_NAME] --cluster-version=1.22 \
  --tags=game-server \
  --scopes=gke-default \
  --num-nodes=4 \
  --no-enable-autoupgrade \
  --machine-type=e2-standard-4
