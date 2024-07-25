#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Network - OUI Lookup
# This is used to generate user accounts and identify users and groups
#

clear
read -p 'Enter the MAC address: ' MAC

oui $MAC
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONPING

if [[ $OPTIONPING = r ]] || [[ $OPTIONPING = R ]]
then
    ~/Command-Center/network_scripts/oui_lookup.sh
    exit 0
elif [[ $OPTIONPING = q ]] || [[ $OPTIONPING = Q ]]
then
    ~/Command-Center/network_scripts/network.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ~/Command-Center/network_scripts/network.sh
    exit 0
fi
