#!/bin/bash
mkdir /home/$USER/.cend
cp profile-setup.sh /home/$USER/.cend
cp transfer.sh /home/$USER/.cend
echo "alias cend='bash /home/$USER/.cend/transfer.sh'" >> /home/$USER/.bashrc
echo "alias cendProfile='bash /home/$USER/.cend/profile-setup.sh'" >> /home/$USER/.bashrc
sudo apt-get install sshpass
