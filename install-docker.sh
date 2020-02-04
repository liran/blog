#!/bin/bash

if ! hash docker 2>/dev/null;then
    echo "The docker was not installed, Install it now..."
    if curl -fsSL https://get.docker.com -o get-docker.sh;
    then
        sh get-docker.sh
        rm -f get-docker.sh
    else
        apt-get update
        apt-get install docker-ce
    fi
fi

# Manage Docker as a non-root user
sudo groupadd docker
sudo usermod -aG docker $USER

docker -v

echo "The Docker has been installed successfully."
