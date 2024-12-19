#!/bin/bash

echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian bookworm stable" | sudo tee /etc/apt/sources.list.d/docker.list

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

sudo apt update

sudo apt install docker.io

sudo apt install docker-compose-plugin

git clone https://github.com/nlohmann/json.git db/json

docker volume create db

docker-compose up --build
