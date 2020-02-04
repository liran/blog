#!/bin/bash

installDockerCompose() {
    if ! hash docker-compose 2>/dev/null; then
        echo 'The docker-compose was not installed, Install it now...'
        if ! $(curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose);
        then
            echo -e "${Error}Install docker-compose faild";
            exit 1;
        fi
        chmod +x /usr/local/bin/docker-compose
        echo "The docker-compose install successfully"
    fi
    docker-compose -v
}

installDockerCompose;
