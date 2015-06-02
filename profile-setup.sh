#!/bin/bash
echo "[*] Name of profile: "
read prof
echo "[*] Enter IP Address: " 
read ip
echo "[*] Enter Username: "
read un
echo "[*] Enter Password: "
read pw
echo "[*] Enter Path to directory: "
read path
cd /home/$USER/.cend
touch user-$prof.txt
touch profiles.txt
echo $prof >> profiles.txt
echo $prof >>user-$prof.txt
echo $ip >>user-$prof.txt
ehco $un >>user-$prof.txt
echo $pw >>user-$prof.txt
echo $path >>user-$prof.txt
