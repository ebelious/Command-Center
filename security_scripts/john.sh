#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Security - John
# This is will automate the command process for john
#
clear
echo -e "\e[3;33muse the full filepath\e[0m"
read -p 'What is the password filename: ' HASHFILE
clear
echo -e "\e[3;33muse the full filepath\e[0m"
read -p 'What is the wordlist: ' WORDLIST
clear
echo -e "\e[1;32mCracking in progress\e[0m"
echo
john --wordlist=WORDLIST --rules $HASHFILE
echo
echo
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONHASH
if [[ $OPTIONHASH = 0 ]]
then
    ./security_scripts/hashcat-mode.sh
    exit 0
elif [[ $OPTIONHASH = r ]] || [[ $OPTIONHASH = R ]]
then
    ./security_scripts/hashcat-wordlist.sh
    exit 0
elif [[ $OPTIONHASH = q ]] || [[ $OPTIONHASH = Q ]]
then
    ./security_scripts/hashcat.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ./security_scripts/hashcat.sh
    exit 0
fi
