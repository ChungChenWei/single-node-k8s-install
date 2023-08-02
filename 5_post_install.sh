#!/bin/bash

echo "[5-1] Export admin.conf"
# root
# echo "export KUBECONFIG=/etc/kubernetes/admin.conf" >> ~/.bashrc && source ~/.bashrc
# normal
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

echo "[5-2] Allow master note to be deployable"
kubectl taint nodes --all node-role.kubernetes.io/control-plane-