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
echo "[!} Your profile has the following credentials:"
echo "[!] Name: $prof IP: $ip Username: $un Password: $pw Path: $path"
echo "[!] Would you like to save this profile? (y/n)"
read answer
if [ $answer = "y" ]; then
        cd /home/$USER/.cend
        touch user-$prof.txt
        touch profiles.txt
        echo $prof >> profiles.txt
        echo $prof >>user-$prof.txt
        echo $ip >>user-$prof.txt
        echo $un >>user-$prof.txt
        echo $pw >>user-$prof.txt
        echo $path >>user-$prof.txt
        cd
else
        echo "[!] Your profile will not be saved"
fi
~                                                                                                                                                                                                                  
~                                                                                                                                                                                                                  
~                                                                                                                                                                                                                  
~                                                                                                                                                                                                                  
~                                                                                                                                                                                                                  
~                                                                 
