#!/bin/bash
echo "[*] Please select file to secure copy"
ls
cwd=$(pwd)
read file
echo "[*] Please select remote profile: " 
cat /home/$USER/.cend/profiles.txt
read profile
cd /home/$USER/.cend
profileInfo=$(<user-$profile.txt)
IFS=" " read prof ip un pw path<<< $profileInfo
sshpass -p $pw scp $cwd/$file $un@$ip:$path
