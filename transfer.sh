#!/bin/bash
cwd=$(pwd)
echo "[*] Please select remote profile: "
cd /home/$USER/.cend/profiles
ls
read -e profile
ProfFindTest="$(find "$profile")"
echo "$ProfFindTest"
profileInfo=$(<$profile)
IFS=" " read prof ip un pw path<<< $profileInfo
sshpass -p $pw scp -r $cwd/$1 $un@$ip:$path
