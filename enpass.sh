#!/bin/bash

echo "To install Enpass, add a new repository to /etc/apt/sources.list"

echo "deb https://apt.enpass.io/  stable main" | sudo tee /etc/apt/sources.list.d/enpass.list

echo "Import key that is used to sign the release"

wget -O - https://apt.enpass.io/keys/enpass-linux.key | sudo tee /etc/apt/trusted.gpg.d/enpass.asc

echo "refresh repo"
sudo apt-get update

echo "Install enpass"
sudo apt-get install enpass
