#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Network - speedtest
# This is used for speedtest option in network
#

# Speedtest option menu
#
clear
echo -e "\e[1;32mRunning Speed Test\e[0m"
echo
speedtest-cli | grep Mbit/s
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONSPEED

if [[ $OPTIONSPEED = r ]] || [[ $OPTIONSPEED = R ]]
then
    ./network_scripts/speedtest.sh
    exit 0
elif [[ $OPTIONSPEED = q ]] || [[ $OPTIONSPEED = Q ]]
then
    ./network_scripts/network.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ./network_scripts/network.sh
    exit 0
fi
