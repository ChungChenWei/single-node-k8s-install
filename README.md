# Shell Scripts for installing Single Node K8S on AlmaLinux

## Usage

- Download `main.sh`

```sh
wget https://raw.githubusercontent.com/ChungChenWei/single-node-k8s-install/main/main.sh
chmod 755 main.sh
```

- Go to `2_install_docker.sh` and change version if needed

```sh
CRI_DOCKER_VERSION="0.3.4" # change
# checkout https://github.com/Mirantis/cri-dockerd/releases/latest for latest version
```

- Run scripts

```sh
./main.sh
```
