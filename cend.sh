#!/bin/bash
cwd=$(pwd) #set variable cwd to the present working directory
echo "[*] Please select remote profile: " #prompt the user for a profile to cend the file to
cd /home/$USER/.cend/profiles #change directory to profiles directory, where all the profiles are saved as txt files
ls #list all the profiles
read -e profile # read in the desired profile
ProfFindTest="$(find "$profile")" #Tab completion
echo "$ProfFindTest" #Tab Completion
profileInfo=$(<$profile) #Tab Completion
IFS=" " read prof ip un pw path<<< $profileInfo # Take all of the information from profile directory and store in vars
sshpass -p $pw scp -r $cwd/$1 $un@$ip:$path #scp the files using sshpass and scp command
