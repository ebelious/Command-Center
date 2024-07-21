#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# [0] Update System
# This script will look for what OS is being used and use that package manager to update and updarade with user permission
#

# Searches the '/etc/os-release' to determine the package manager
# Then runs an update and then upgrade
clear
echo -e "\e[1;32mUpdating Repositories...\e[0m"
echo
sleep 1

# Storing OS into a variable
OS=$(head -1 /etc/os-release | sed 's/NAME="//'| awk '{print $1}')
if [[ $OS = Fedora ]] || [[ $OS = RedHat ]] || [[$OS = Centos ]]
then
    sudo dnf update
    clear
    echo -e "\e[1;32mUpdating Flatpak...\e[0m"
    echo
    flatpak update
    sleep 2
    clear
    echo -e "\e[1;32mGoing back to Command Center...\e[0m"
    sleep 2

    ./command-center.sh
elif [[ $OS = Pretty-Ubuntu || PRETTY_Debian ]]
then
    sudo apt update && sudo apt upgrade
    echo -e "\e[1;32mUpdating Flatpak...\e[0m"
    flatpak update
    clear
    echo -e "\e[1;32mGoing back to Command Center...\e[0m"
    sleep 2
    ./command-center.sh
elif [[ $OS = Arch ]]
then
    sudo pcaman -Syu
    echo -e "\e[1;32mUpdating Flatpak...\e[0m"
    flatpak update
    clear
    echo -e "\e[1;32mGoing back to Command Center...\e[0m"
    sleep 2
    ./command-center.sh
elif [[ $OPTION = openSUSE ]]
then
    sudo zypper update
    echo -e "\e[1;32mUpdating Flatpak...\e[0m"
    flatpak update
    clear
    echo -e "\e[1;32mGoing back to Command Center...\e[0m"
    sleep 2
    ./command-center.sh
elif [[ $OPTION = Alpine ]]
then
    doas apk update
    echo -e "\e[1;32mUpdating Flatpak...\e[0m"
    flatpak update
    clear
    echo -e "\e[1;32mGoing back to Command Center...\e[0m"
    sleep 2
    ./command-center.sh
else
    echo "\e[1;31mYour System is no supported...\e[0m"
    sleep 2
    ./command-center.sh
fi
