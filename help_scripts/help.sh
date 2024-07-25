#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Help Menu
# This is a menu wiht help options and manuals
#

clear
echo
echo -e "\e[1;32mHelp Center\e[0m"
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "\e[1;32m[\e[1;36m0\e[1;32m]\e[0m Manuals"
echo -e "\e[1;32m[\e[1;36m1\e[1;32m]\e[0m Search Command by Function"
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
# Menu options
read -p ': ' OPTIONHELP
if [[ $OPTIONHELP = 0 ]]
then
    ~/Command-Center/help_scripts/man.sh
elif [[ $OPTIONHELP = 1 ]]
then
        ~/Command-Center/help_scripts/apropos.sh
elif [[ $OPTIONHELP = q ]] || [[ $OPTIONHELP = Q ]]
then
    ~/Command-Center/command-center.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep .5
    ~/Command-Center/command-center.sh
fi
