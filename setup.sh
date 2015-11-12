#!/bin/bash
mkdir /home/$USER/.cend    #Creates .cend folder for the bash scripts to be saved 
mkdir /home/$USER/.cend/profiles
cp profile-setup.sh /home/$USER/.cend # copy files over to the .cend folder
cp transfer.sh /home/$USER/.cend
echo "alias cend='bash /home/$USER/.cend/transfer.sh'" >> /home/$USER/.bashrc  # create alias's for the scripts to be used 
echo "alias cendProfile='bash /home/$USER/.cend/profile-setup.sh'" >> /home/$USER/.bashrc
sudo apt-get update
sudo apt-get install sshpass # install sshpass (obviously for debian/ubuntu)
