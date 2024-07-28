#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Centerhttps://github.com/ebelious/Command-Center/tree/main/network_scripts
#
# Network - speedtest
# This is used for speedtest option in network
#

# Speedtest option menu
#
clear
echo -e "\e[1;32mRunning Speed Test\e[0m"
echo
SPEEDTEST=$(speedtest-cli > ~/Command-Center/network_scripts/speedtest.tmp)
DOWNLOAD=$(cat ~/Command-Center/network_scripts/speedtest.tmp | grep Download)
UPLOAD=$(cat ~/Command-Center/network_scripts/speedtest.tmp | grep Upload)
echo
echo -e "\e[1;32mDownloade\[0m: \e[0;32m$DOWNLOAD\e[0m | tr -d 'Download:' "
echo -e "\e[1;35mDownloade\[0m: \e[0;35m$UPLOAD\e[0m | tr -d ''Upload: '"
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONSPEED

if [[ $OPTIONSPEED = r ]] || [[ $OPTIONSPEED = R ]]
then
    ~/Command-Center/network_scripts/speedtest.sh
    exit 0
elif [[ $OPTIONSPEED = q ]] || [[ $OPTIONSPEED = Q ]]
then
    ~/Command-Center/network_scripts/network.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ~/Command-Center/network_scripts/network.sh
    exit 0
fi
