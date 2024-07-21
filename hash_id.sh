#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Security - hash -dentifier
# This is used for testing, and changing networking information
#
clear
echo -e "\e[1;32mEnter Hash here\e[0m     \e[3;33mctl+x to exit\e[0m"
read -p ': ' HASHID
hashid $HASHID
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONHASH
if [[ $OPTIONHASH = r ]] || [[ $OPTIONHASH = R ]]
then
    ./hash_id.sh
    exit 0
elif [[ $OPTIONHASH = q ]] || [[ $OPTIONHASH = Q ]]
then
    ./security.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ./security.sh
    exit 0
fi
