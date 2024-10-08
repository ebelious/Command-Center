#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Prereqs: figlet htop lm_sensors htop vim dmidecode lazydocker(git repo)
#
# This is Command Center. This is simple softweare to automate Administrative # tasks. This is all writtent in bash.
# Works with: Debian/Ubuntu, RedHat/Ferdora, OpenSUSE, Arch
#
clear
read -p 'What would you like to trace: ' TARGET
clear
echo -e "\e[1;32mRunning Traceroute\e[0m"
echo
grc traceroute $TARGET
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONMEN
if [[ $OPTIONMEN = R ]] || [[ $OPTIONMEN = r ]]
then
    ~/Command-Center/network_scripts/traceroute.sh
    exit 0
elif [[ $OPTIONMEN = q ]] || [[ $OPTIONMEN = Q ]]
then
    ~/Command-Center/network_scripts/network.sh
    exit 0
else
    ~/Command-Center/network_scripts/network.sh
    exit 0
fi
