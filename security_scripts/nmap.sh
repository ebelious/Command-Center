#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Security - nmap
# This is a script that runs basic Nmap scan
#

# Gathering variable for nmap scanning
clear
echo -e "\e[1;32mNmap\e[0m"
echo
read -p 'What is the target? ' TARGET
clear
echo -e "\e[1;32mScanning...\e[0m"
echo
sudo grc nmap -T4 -A -sS -v $TARGET
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONNMAP
if [[ $OPTIONNMAP = r ]] || [[ $OPTIONNMAP = R ]]
then
    ./security_scripts/nmap.sh
    exit 0
elif [[ $OPTIONNMAP = q ]] || [[ $OPTIONNMAP = Q ]]
then
    ./security_scripts/security.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ./security_scripts/security.sh
    exit 0
fi
