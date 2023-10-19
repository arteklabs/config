#!/bin/bash
brew install colima
brew install docker docker-compose
colima start
echo "[2 of 3] configuring (see docker/config.json)"
cp ./docker/config.json ~/.docker/config.json