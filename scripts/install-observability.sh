#!/bin/bash

helm upgrade prometheus prometheus-community/prometheus \
  --install \
  --namespace monitoring \ 
  --create-namespace
  --wait

helm upgrade prometheus-operator-crds prometheus-community/prometheus-operator-crds \
  --install \
  --namespace monitoring


helm upgrade grafana grafana/grafana \
  --install \
  --namespace monitoring


helm upgrade loki grafana/loki \
  --install \
  --namespace monitoring
