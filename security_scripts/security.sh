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
echo -e "\e[1;32m[\e[1;36m2\e[1;32m]\e[0m Whois"
echo -e "\e[1;32m[\e[1;36m3\e[1;32m]\e[0m Recon-ng"
echo -e "\e[1;32m[\e[1;36m4\e[1;32m]\e[0m Hash ID"
echo -e "\e[1;32m[\e[1;36m5\e[1;32m]\e[0m Hashcat"
echo -e "\e[1;32m[\e[1;36m6\e[1;32m]\e[0m John"
echo -e "\e[1;32m[\e[1;36m7\e[1;32m]\e[0m SQLMap"
echo -e "\e[1;32m[\e[1;36m8\e[1;32m]\e[0m IP Intelligence"
echo -e "\e[1;32m[\e[1;36m9\e[1;32m]\e[0m Hash Intelligence"
echo
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
#Battery / color / time tabs
PERCENT=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}' | tr -d '%')
if [[ $PERCENT -ge 96 && $PERCENT -le 100 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;32m󰁹\e[0m $PERCENT \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
        tput sc; batteryprompt; tput rc
elif [[ $PERCENT -ge 71 && $PERCENT -le 95 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;32m󰂁\e[0m $PERCENT \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
elif [[ $Percent -ge 61 && $PERCENT -le 70 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;32m󰂀\e[0m $PERCENT% \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -ge 51 && $PERCENT -le 60 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;32m󰁿\e[0m $PERCENT \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -ge 41 && $PERCENT -le 50 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;32m󰁾 $PERCENT \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -ge 31 && $PERCENT -le 40 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;33m󰁽\e[0m $PERCENT \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -ge 21 && $PERCENT -le 30 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;33m󰁼\e[0m $PERCENT \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -ge 11 && $PERCENT -le 20 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;33m󰁻\e[0m $PERCENT \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -ge 5 && $PERCENT -le 10 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;33m󰁻\e[0m $PERCENT \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -le 4 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m\e[0;36m󱃍\e[0m $PERCENT\e[0;32m]\e[0m\e[0;32m[\e[0m\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
fi
echo
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
    ~/Command-Center/security_scripts/whois.sh
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
elif [[ $OPTIONNET = 8 ]]
then
    ~/Command-Center/security_scripts/virustotal.sh
elif [[ $OPTIONNET = 9 ]]
then
    ~/Command-Center/security_scripts/vt_hash.sh
    elif [[ $OPTIONNET = q ]] || [[ $OPTIONNET = Q ]]
then
    ~/Command-Center/command-center.sh
    exit 0
fi
