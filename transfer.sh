#!/bin/bash
cwd=$(pwd)
echo "[*] Please select file to secure copy"
ls
read -e file
FileFindTest="$(find "$file")"
echo "$FileFindTest"
echo "[*] Please select remote profile: "
cd /home/$USER/.cend/profiles
ls
read -e profile
ProfFindTest="$(find "$profile")"
echo "$ProfFindTest"
profileInfo=$(<$profile)
IFS=" " read prof ip un pw path<<< $profileInfo
sshpass -p $pw scp -r $cwd/$file $un@$ip:$path
