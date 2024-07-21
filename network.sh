#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# [6] Network
# This is used for testing, and changing networking information
#
clear
echo
echo -e "\e[1;32mNetwork Center\e[0m"
networkctl status 2> /dev/null | grep Address | tail -n 1
networkctl status 2> /dev/null | grep Gateway | tail -n 1
echo -e "\e[1;32mInternet\e[0m"
for x in 8.8.8.8
do
    if ping -q -c 1 -W 1 $x &> /dev/null
    then
        echo -e "\e[1;36m     Good\e[0m"
    else
        echo -e "\e[1;31mNo Connection\e[0m"
    fi
done

printf '=%.0s' {1..30} ; printf '=\n'
echo -e "\e[1;32m[\e[1;36m0\e[1;32m]\e[0m Speedtest"
echo -e "\e[1;32m[\e[1;36m1\e[1;32m]\e[0m Change IP"
echo -e "\e[1;32m[\e[1;36m2\e[1;32m]\e[0m Ping"
echo -e "\e[1;32m[\e[1;36m3\e[1;32m]\e[0m Traceroute"
echo
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONNET
if [[ $OPTIONNET = 0 ]]
then
    ./speedtest.sh
    exit 0
elif [[ $OPTIONNET = 2 ]]
then
    ./ping.sh
    exit 0
elif [[ $OPTIONNET = q ]] || [[ $OPTIONNET = Q ]]
then
    ./command-center.sh
    exit 0
fi
