#!/bin/sh
dpkg --get-selections > ~/mypackage/Package.list
sudo cp -R /etc/apt/sources.list* ~/mypackage
sudo apt-key exportall > ~/mypackage/Repo.keys
