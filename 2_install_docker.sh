#!/bin/bash

CRI_DOCKER_VERSION="0.3.4" # change
# checkout https://github.com/Mirantis/cri-dockerd/releases/latest for latest version

echo "[2-1] Update yum and install docker engine"
sudo yum update -y
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io --allowerasing

echo "[2-2] Start and enable docker engine"
sudo systemctl enable --now docker

echo "[2-3] Download cri-docker"
wget https://github.com/Mirantis/cri-dockerd/releases/download/v${CRI_DOCKER_VERSION}/cri-dockerd-${CRI_DOCKER_VERSION}.amd64.tgz && tar xvf cri-dockerd-${CRI_DOCKER_VERSION}.amd64.tgz
rm cri-dockerd-${CRI_DOCKER_VERSION}.amd64.tgz

echo "[2-4] Install cri-docker"
cd cri-dockerd
mkdir -p /usr/local/bin
sudo install -o root -g root -m 0755 cri-dockerd /usr/local/bin/cri-dockerd
wget https://raw.githubusercontent.com/Mirantis/cri-dockerd/master/packaging/systemd/cri-docker.service https://raw.githubusercontent.com/Mirantis/cri-dockerd/master/packaging/systemd/cri-docker.socket
sudo install cri-docker.* /etc/systemd/system
sudo sed -i -e 's,/usr/bin/cri-dockerd,/usr/local/bin/cri-dockerd,' /etc/systemd/system/cri-docker.service
sudo systemctl daemon-reload
sudo systemctl enable cri-docker.service
sudo systemctl enable --now cri-docker.socket
cd ..
rm cri-dockerd
