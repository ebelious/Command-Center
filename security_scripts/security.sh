#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Security Menu
# This is used for testing, and changing networking information
#
clear
echo
echo -e "\e[1;32mSecurity Center\e[0m"
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "\e[1;32m[\e[1;36m0\e[1;32m]\e[0m Nmap"
echo -e "\e[1;32m[\e[1;36m1\e[1;32m]\e[0m Metasploit"
echo -e "\e[1;32m[\e[1;36m2\e[1;32m]\e[0m Wireshark"
echo -e "\e[1;32m[\e[1;36m3\e[1;32m]\e[0m recon-ng"
echo -e "\e[1;32m[\e[1;36m4\e[1;32m]\e[0m Hash ID"
echo -e "\e[1;32m[\e[1;36m5\e[1;32m]\e[0m Hashcat"
echo -e "\e[1;32m[\e[1;36m6\e[1;32m]\e[0m John"
echo -e "\e[1;32m[\e[1;36m7\e[1;32m]\e[0m SQLMap"
echo
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
# time stamp
rightprompt()
{
    printf "%*s" $COLUMNS "[$(date +%r)]"
}
tput sc; rightprompt; tput rc
# Allows the user to exit thes screen and go back to the command-center menu
# Output info into a file with timestamp
read -p ': ' OPTIONNET
if [[ $OPTIONNET = 0 ]]
then
    ~/Command-Center/security_scripts/nmap.sh
    exit 0
elif [[ $OPTIONNET = 1 ]]
then
    ~/Command-Center/security_scripts/msfconsole.sh
    exit 0
elif [[ $OPTIONNET = 2 ]]
then
    ~/Command-Center/security_scripts/ping.sh
    exit 0
elif [[ $OPTIONNET = 3 ]]
then
    ~/Command-Center/security_scripts/recon.sh
    exit 0
elif [[ $OPTIONNET = 4 ]]
then
    ~/Command-Center/security_scripts/hash_id.sh
    exit 0
elif [[ $OPTIONNET = 5 ]]
then
    ~/Command-Center/security_scripts/hashcat.sh
    exit 0
elif [[ $OPTIONNET = 6 ]]
then
    ~/Command-Center/security_scripts/john.sh
    exit 0
elif [[ $OPTIONNET = 7 ]]
then
    ~/Command-Center/security_scripts/sqlmap.sh
    exit 0
elif [[ $OPTIONNET = q ]] || [[ $OPTIONNET = Q ]]
then
    ~/Command-Center/command-center.sh
    exit 0
fi
