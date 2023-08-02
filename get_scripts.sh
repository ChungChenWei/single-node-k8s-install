#!/bin/bash

mkdir install-scripts
cd install-scripts
wget https://raw.githubusercontent.com/ChungChenWei/single-node-k8s-install/main/0_download.sh
chmod 755 0_download.sh

./0_download.sh