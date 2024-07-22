#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Network - host detection
#
clear
echo -e "\e[3;33mex: 192.168.1.0/24\e[0m"
read -p 'Select the network: ' TARGET
echo
clear
echo -e "\e[1;32mDetected Hosts\e[0m"
echo
nmap -sn -T5 $TARGET | grep report | awk '{print $5}'
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONSCAN

if [[ $OPTIONSCAN = r ]] || [[ $OPTIONSCAN = R ]]
then
    ./host_detection.sh
    exit 0
elif [[ $OPTIONSCAN = q ]] || [[ $OPTIONSCAN = Q ]]
then
    ./network.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ./network.sh
    exit 0
fi
