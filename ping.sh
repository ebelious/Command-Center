#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Network - ping
#

# Asking for the ping target and then running scan
clear
read -p 'What would you like to ping: ' TARGET
clear
echo -e "\e[1;32mRunning Ping Test\e[0m"
echo
for x in $TARGET
do
    if ping -q -c 2 -W 1 $x
    then
        echo
        echo -e "\e[1;36m$x is recahable\e[0m"
    else
        echo
        echo -e "\e[1;31m$x is not reachable\e[0m"
    fi
done
# Options
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONPING

if [[ $OPTIONPING = r ]] || [[ $OPTIONPING = R ]]
then
    ./ping.sh
    exit 0
elif [[ $OPTIONPING = q ]] || [[ $OPTIONPING = Q ]]
then
    ./network.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ./network.sh
    exit 0
fi
