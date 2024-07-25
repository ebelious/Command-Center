#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Misc - Create banner
# This Script is made to display disk information and mount points
#
clear
read -p "Enter text to create banner: " BANNER
figlet $BANNER
echo
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTION
if [[ $OPTION = r ]] || [[ $OPTION = R ]]
then
    ~/Command-Center/misc_scripts/figlet.sh
    exit 0
elif [[ $OPTION = q ]] || [[ $OPTION = Q ]]
then
    ~/Command-Center/misc_scripts/misc.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ~/Command-Center/misc_scripts/misc.sh
    exit 0
fi
