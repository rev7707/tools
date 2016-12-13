#!/bin/sh

sudo apt-key add ~/mypackage/Repo.keys
sudo cp -R ~/mypackage/sources.list* /etc/apt/
sudo apt-get update
sudo apt-get install dselect
sudo dpkg --set-selections < ~/mypackage/Package.list
sudo dselect
