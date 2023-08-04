#!/bin/bash

echo "[1-1] Disable and turn off swap"
sudo swapoff -a
sed -i '/swap/s/^/#/' /etc/fstab

echo "[1-2] Disable selinux"
sudo setenforce 0
sudo sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config

echo "[1-3] Loading K8s required Kernel Modules"
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
overlay
br_netfilter
EOF
# manual load
modprobe overlay
modprobe br_netfilter

echo "[1-4] Setup iptables config"
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-iptables  = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward                 = 1
EOF
# reload config
sysctl --system

echo "[1-5] Setup firewall config"
# firewall-cmd --add-service=http --permanent
# firewall-cmd --add-service=https --permanent
# firewall-cmd --add-port 6443/tcp --permanent
# firewall-cmd --add-port 2379-2380/tcp --permanent
# firewall-cmd --add-port 10250/tcp --permanent
# firewall-cmd --add-port 10257/tcp --permanent
# firewall-cmd --add-port 10259/tcp --permanent
# firewall-cmd --reload
# sudo systemctl restart firewalld

# firewall-cmd --list-all
# for test
# nc 127.0.0.1 6443

sudo systemctl disable --now firewalld.service
