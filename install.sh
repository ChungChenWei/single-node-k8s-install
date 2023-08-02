#!/bin/bash

sudo ./1_basic_setup.sh
sudo ./2_install_docker.sh
sudo ./3_install_k8s.sh
sudo ./4_start_control_node.sh
./5_post_install.sh
./6_install_CNI.sh
./A_install_tools.sh
./7_install_ingress_nginx.sh