#!/bin/bash

# The goal of this script is to install all the programs i want on a fresh machine.
# Test to see if user is running with root privileges.
if [[ "${UID}" -ne 0 ]]
then
 echo 'Must execute with sudo or root' >&2
 exit 1
fi

# Update your system
sudo apt update -y

# Upgrade your system
sudo apt upgrade -y

#Desired Programs
sudo apt install htop -y
sudo apt install nload -y
sudo apt install tmux -y
sudo apt install curl -y
sudo apt install gzip -y
sudo apt install glances -y
sudo apt install nfs-common -y
sudo apt install samba -y
sudo apt install cifs-utils -y

# Delete the script after it has be ran
# sudo rm obbe+desired.sh