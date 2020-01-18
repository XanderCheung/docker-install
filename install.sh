#!/usr/bin/env bash

# Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# use Docker as a non-root user
# Remember that you will have to log out and back in for this to take effect!
sudo usermod -aG docker ${USER}

# Docker Compose
sudo sudo curl -L \
    "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" \
    -o /usr/local/bin/docker-compose \
    && sudo chmod +x /usr/local/bin/docker-compose \
    && printf "\nDocker Compose($(docker-compose version --short)) installed successfully\n\n"
