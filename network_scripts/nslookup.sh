#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Network - nslookup
# This is nslookup utility
#

clear
read -p 'What would you like to lookup: ' TARGET
clear
echo -e "\e[1;32mRunning NSLookup\e[0m"
echo
nslookup $TARGET
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONMEN
if [[ $OPTIONMEN = R ]] || [[ $OPTIONMEN = r ]]
then
    ./network_scripts/nslookup.sh
    exit 0
elif [[ $OPTIONMEN = q ]] || [[ $OPTIONMEN = Q ]]
then
    ./network_scripts/network.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ./network_scripts/network.sh
    exit 0
fi
