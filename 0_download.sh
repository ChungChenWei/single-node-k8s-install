#!/bin/bash

wget https://raw.githubusercontent.com/ChungChenWei/single-node-k8s-install/main/install.sh
wget https://raw.githubusercontent.com/ChungChenWei/single-node-k8s-install/main/1_basic_setup.sh
wget https://raw.githubusercontent.com/ChungChenWei/single-node-k8s-install/main/2_install_docker.sh
wget https://raw.githubusercontent.com/ChungChenWei/single-node-k8s-install/main/3_install_k8s.sh
wget https://raw.githubusercontent.com/ChungChenWei/single-node-k8s-install/main/4_start_control_node.sh
wget https://raw.githubusercontent.com/ChungChenWei/single-node-k8s-install/main/5_post_install.sh
wget https://raw.githubusercontent.com/ChungChenWei/single-node-k8s-install/main/6_install_CNI.sh
wget https://raw.githubusercontent.com/ChungChenWei/single-node-k8s-install/main/7_install_ingress_nginx.sh
wget https://raw.githubusercontent.com/ChungChenWei/single-node-k8s-install/main/A_install_tools.sh

chmod +x *.sh