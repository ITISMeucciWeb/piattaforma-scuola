FROM gitpod/workspace-mongodb

RUN sudo apt-get update \
    && sudo apt-get install -y \
        debian-keyring debian-archive-keyring apt-transport-https \
    && curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo tee /etc/apt/trusted.gpg.d/caddy-stable.asc \
    && curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list \
    && sudo apt update \
    && sudo apt install -y caddy \
    && sudo rm -rf /var/lib/apt/lists/*
