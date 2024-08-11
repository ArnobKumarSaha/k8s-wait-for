#!/bin/bash

helm uninstall -n kubedb kubedb
helm pull oci://ghcr.io/appscode-charts/kubedb --version v2024.8.2-rc.2

helm install kubedb kubedb-v2024.8.2-rc.2.tgz \
  --version v2024.8.2-rc.2 \
  --namespace kubedb --create-namespace
