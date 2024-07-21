#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Network - Netstat
# This is used for running netstat to identify open ports
#
clear
netstat | less
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONSTAT
if [[ $OPTIONSTAT = R ]] || [[ $OPTIONSTAT = r ]]
then
    ./netstat.sh
    exit 0
elif [[ $OPTIONSTAT = q ]] || [[ $OPTIONSTAT = Q ]]
then
    ./network.sh
    exit 0
else
    ./network.sh
fi
