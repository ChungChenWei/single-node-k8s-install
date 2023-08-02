#!/bin/bash

echo "[7-1] Download ingress-nginx config file"
mkdir helm-ingress-nginx
cd helm-ingress-nginx
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm show values ingress-nginx/ingress-nginx > ingress-nginx.yaml

echo "[7-2] Modify ingress-nginx config file"
yq '.controller.hostPort.enabled = true' -i ingress-nginx.yaml
yq '.controller.kind = "DaemonSet"' -i ingress-nginx.yaml

echo "[7-3] Install ingress-nginx"
helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx -n ingress-nginx --create-namespace -f ingress-nginx.yaml
