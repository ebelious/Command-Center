#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Security - hashcat
# This is used for testing, and changing networking information
#

clear
echo -e "\e[1;32mHashcat\e[0m"
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "\e[1;32m[\e[1;36m0\e[1;32m]\e[0m Hash Mode"
echo -e "\e[1;32m[\e[1;36m1\e[1;32m]\e[0m Wordlist Crack"
echo -e "\e[1;32m[\e[1;36m2\e[1;32m]\e[0m Brute-Force Crack"
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONHASH
if [[ $OPTIONHASH = 0 ]]
then
    ./security/hashcat-mode.sh
    exit 0
elif [[ $OPTIONHASH = 1 ]]
then
    ./security/hashcat-wordlist.sh
    exit 0
elif [[ $OPTIONHASH = r ]] || [[ $OPTIONHASH = R ]]
then
    ./security/hash_id.sh
    exit 0
elif [[ $OPTIONHASH = q ]] || [[ $OPTIONHASH = Q ]]
then
    ./security/security.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ./security/security.sh
    exit 0
fi
