#!/bin/bash

echo "[4-1] Init kubeadm"
# pre-pull images
sudo kubeadm config images pull --cri-socket unix:///var/run/cri-dockerd.sock
# calico
sudo kubeadm init --cri-socket unix:///var/run/cri-dockerd.sock --pod-network-cidr=192.168.0.0/16
# flannel
# sudo kubeadm init --cri-socket unix:///var/run/cri-dockerd.sock --pod-network-cidr=10.244.0.0/16
