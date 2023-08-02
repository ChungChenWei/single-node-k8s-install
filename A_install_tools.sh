#!/bin/bash

echo "[A-1] Install Helm"
sudo yum install -y git
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
# mkdir -p /usr/local/bin
# echo "export PATH=$PATH:/usr/local/bin" >> ~/.bashrc && source ~/.bashrc
./get_helm.sh
rm ./get_helm.sh

echo "[A-2] Install yq"
sudo wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/local/bin/yq &&\
    sudo chmod +x /usr/local/bin/yq
