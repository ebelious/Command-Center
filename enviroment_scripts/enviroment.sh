#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Enviroment Information Menu
# This is for printing out enviromant information such as networking info, sensors
#

# Variables
DATEENV=$(date | awk '{print $7 $2 $3}') # Used to store timestamp for file creation

# Displays the enviroemnt info
clear
echo -e "\e[1;32mDevice Information\e[0m"
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "Host: \e[1;36m$HOSTNAME\e[0m"
echo -e "\e[1;32m[\e[1;36m0\e[1;32m]\e[0m Temperature"
echo -e "\e[1;32m[\e[1;36m1\e[1;32m]\e[0m CPU"
echo -e "\e[1;32m[\e[1;36m2\e[1;32m]\e[0m BIOS"
echo -e "\e[1;32m[\e[1;36m3\e[1;32m]\e[0m RAM"
echo -e "\e[1;32m[\e[1;36m4\e[1;32m]\e[0m System"
echo -e "\e[1;32m[\e[1;36m5\e[1;32m]\e[0m PCI"
echo -e "\e[1;32m[\e[1;36m6\e[1;32m]\e[0m Disks"
echo -e "\e[1;32m[\e[1;36m7\e[1;32m]\e[0m Disks Dev By"
echo ''
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
echo''
# Allows the user to exit thes screen and go back to the command-center menu
# Output info into a file with timestamp
read -p ': ' OPTIONENV
echo ''
if [[ $OPTIONENV = 0 ]]
then
    sensors | less
    ~/Command-Center/enviroment_scripts/enviroment.sh
elif [[ $OPTIONENV = 1 ]]
then
    lscpu | less
    ~/Command-Center/enviroment_scripts/enviroment.sh
elif [[ $OPTIONENV = 2 ]]
then
    sudo dmidecode -t bios | less
    ~/Command-Center/enviroment_scripts/enviroment.sh
elif [[ $OPTIONENV = 3 ]]
then
    sudo dmidecode -t memory | less
    ~/Command-Center/enviroment_scripts/enviroment.sh
elif [[ $OPTIONENV = 4 ]]
then
    sudo dmidecode -t system | less
    ~/Command-Center/enviroment_scripts/enviroment.sh
elif [[ $OPTIONENV = 5 ]]
then
    sudo lspci | less
    ~/Command-Center/enviroment_scripts/enviroment.sh
elif [[ $OPTIONENV = 6 ]]
then
    ~/Command-Center/enviroment_scripts/disk_info.sh
elif [[ $OPTIONENV = 7 ]]
then
    ~/Command-Center/enviroment_scripts/disk_dev.sh
    exit 0
elif [[ $OPTIONENV = q ]] || [[ $OPTIONENV = Q ]]
then
    ~/Command-Center/command-center.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep .5
    ~/Command-Center/enviroment.sh
fi
