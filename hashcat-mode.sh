#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Security - hashcat - checks has number from the hashcat list
# This is used for gettting a mode number for a selected hash type
#
clear
read -p 'What is the hash type: ' TARGET
clear
echo -e "\e[1;32mThese are the modes for your search\e[0m"
echo
cat ./hashcat-hash-modes.txt | grep $TARGET
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTION
if [[ $OPTION = r ]] || [[ $OPTION = R ]]
then
    ./hashcat-mode.sh
    exit 0
elif [[ $OPTION = q ]] || [[ $OPTION = Q ]]
then
    ./hashcat.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ./hashcat.sh
    exit 0
fi
