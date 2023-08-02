# Shell Scripts for installing Single Node K8S on AlmaLinux

## Usage

- Check

  - If you are using VM with NAT, please check DNS

    ```sh
    sudo vim /etc/resolv.conf
    ## add nameserver 8.8.8.8 if needed
    ```

  - Set `/etc/hosts`

    ```sh
    sudo vim /etc/hosts
    # [your-master-ip] [your-hostname]
    # e.g. 127.0.0.1 hostname
    ```

  - If need to change hostname

    ```sh
    sudo hostnamectl set-hostname [hostname]
    ```

- Download `get_scripts.sh`

  ```sh
  wget https://raw.githubusercontent.com/ChungChenWei/single-node-k8s-install/main/get_scripts.sh
  chmod +x get_scripts.sh
  ./get_scripts.sh
  ```

- Go to `2_install_docker.sh` and change version if needed

  ```sh
  CRI_DOCKER_VERSION="0.3.4" # change
  # checkout https://github.com/Mirantis/cri-dockerd/releases/latest for latest version
  ```

- Run scripts

  ```sh
  cd install-scripts
  ./install.sh
  ```
