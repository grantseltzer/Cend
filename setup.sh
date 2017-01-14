#!/bin/bash
mkdir -p /home/$USER/.cend/profiles
sudo cp ./cendprof.sh /usr/bin/cendprof
sudo cp ./cend.sh /usr/bin/cend
sudo dnf update
sudo dnf install sshpass # install sshpass (obviously for debian/ubuntu)
