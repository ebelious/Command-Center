#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# [6] Network - speedtest
# This is used for speedtest option in network
#

# Speedtest option menu
#
clear
echo -e "\e[1;32mRunning Speed Test\e[0m"
echo
speedtest-cli
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
echo
read -p ': ' OPTIONSPEED

if [[ $OPTIONSPEED = r ]] || [[ $OPTIONSPEED = R ]]
then
    ./speedtest.sh
    exit 0
elif [[ $OPTIONSPEED = q ]] || [[ $OPTIONSPEED = Q ]]
then
    ./network.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ./network.sh
    exit 0
fi
