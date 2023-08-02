#!/bin/bash

echo "[6-1] Install CNI"
# calico
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.26.1/manifests/tigera-operator.yaml
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.26.1/manifests/custom-resources.yaml
# watch kubectl get pods -n calico-system

# flannel
# kubectl apply -f https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml