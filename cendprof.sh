#!/bin/bash
echo "[*] Name of profile: " #Prompt user for all of the needed credentials and read them
read prof
echo "[*] Enter IP Address: " 
read ip
echo "[*] Enter Username: "
read un
echo "[*] Enter Password: "
read pw
echo "[*] Enter Path to directory: "
read path
echo "[!] Your profile has the following credentials:"
echo "[!] Name: $prof IP: $ip Username: $un Password: $pw Path: $path"   #print out the users choices and ask them to confirm
echo "[!] Would you like to save this profile? (y/n)"
read answer
if [ $answer = "y" ]; then  #If approved, create the txt file for the users profile to be saved, append the variables in format for them to be read
        cd /home/$USER/.cend/profiles
        touch $prof
        echo $prof >>$prof
        echo $ip >>$prof
        echo $un >>$prof
        echo $pw >>$prof
        echo $path >>$prof
else
        echo "[!] Your profile will not be saved"
fi 
