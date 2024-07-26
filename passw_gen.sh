#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Password Generator
#

clear
echo
password=$(tr -dc 'A-Za-z0-9!?%=' < /dev/urandom | head -c 32)
echo "$password"
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONPASS

if [[ $OPTIONPASS = r ]] || [[ $OPTIONPASS = R ]]
then
    ~/Command-Center/passw_gen.sh
    exit 0
elif [[ $OPTIONPASS = q ]] || [[ $OPTIONPASS = Q ]]
then
    ~/Command-Center/command-center.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ~/Command-Center/command-center.sh
    exit 0
fi
