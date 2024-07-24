#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Network - Curl Test
# This is used for testing, http connection using curl
#
clear
echo -e "\e[1;32mSSL Test\e[0m"
echo
echo -e "\e[3;33mex. example.com\e[0m"
read -p 'Enter a destination: ' TARGET
clear
echo -e "\e[1;32mResults...\e[0m"
echo
grc curl -v https://$TARGET

echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONNMAP
if [[ $OPTIONNMAP = r ]] || [[ $OPTIONNMAP = R ]]
then
    ~/Command-Center/network_scripts/http_test.sh
    exit 0
elif [[ $OPTIONNMAP = q ]] || [[ $OPTIONNMAP = Q ]]
then
        ~/Command-Center/network_scripts/network.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ~/Command-Center/network_scripts/network.sh
    exit 0
fi
