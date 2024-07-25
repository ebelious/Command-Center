#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Comand center is a collection of tools and utilities packaged into a single platform
# Some of te options are only configure for basic functionality as others are direct contact with the tool interface
#
# git remote add origin git@github.com:ebelious/Command-Center.git
# git pull origin main
# git branch -M main
# git add .
# git commit -m "Added additional functionality"
# git push -u origin main

# This is the selection menu
cd ~/Documents/Projects/Command-Center/
clear
figlet CommandCenter
echo 'Terminal-based multi-tool for administration tasks, with a few extras'
echo -e "Found at: \e[3;33mhttps://github.com/ebelious/Command-Center\e[0m"
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "Hello \e[1;36m${USERNAME}\e[0m,"
echo -e "\e[1;mWelcome to the Command Center\e[0m"
echo
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "\e[3;32m   What is our task?\e[0m"
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "\e[1;32m[\e[1;36m0\e[1;32m]\e[0m Update System"
echo -e "\e[1;32m[\e[1;36m1\e[1;32m]\e[0m Hardware"
echo -e "\e[1;32m[\e[1;36m2\e[1;32m]\e[0m Processes & Utilization"
echo -e "\e[1;32m[\e[1;36m3\e[1;32m]\e[0m Users and Groups"
echo -e "\e[1;32m[\e[1;36m4\e[1;32m]\e[0m Network"
echo -e "\e[1;32m[\e[1;36m5\e[1;32m]\e[0m Security"
echo -e "\e[1;32m[\e[1;36m6\e[1;32m]\e[0m (.) Files"
echo -e "\e[1;32m[\e[1;36m7\e[1;32m]\e[0m Docker"
echo -e "\e[1;32m[\e[1;36m8\e[1;32m]\e[0m Browse Files"
echo -e "\e[1;32m[\e[1;36m9\e[1;32m]\e[0m File Search"
echo -e "\e[1;32m[\e[1;36m10\e[1;32m]\e[0m Miscellaneous"
echo
echo -e "\e[1;32m[\e[1;36mH\e[1;32m]\e[0m Help"
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
read -p ': ' OPTIONMAIN # This is running the script for the selected menu option
if [[ $OPTIONMAIN = 0 ]]
then
    ~/Command-Center/update.sh
    exit 0
elif [[ $OPTIONMAIN = 1 ]]
then
    ~/Command-Center/enviroment_scripts/enviroment.sh
    exit 0
elif [[ $OPTIONMAIN = 2 ]]
then
    ~/Command-Center/processes.sh
    exit 0
elif [[ $OPTIONMAIN = 3 ]]
then
    ~/Command-Center/users-groups.sh
    exit 0
elif [[ $OPTIONMAIN = 4 ]]
then
    ~/Command-Center/network_scripts/network.sh
    exit 0
elif [[ $OPTIONMAIN = 5 ]]
then
    ~/Command-Center/security_scripts/security.sh
elif [[ $OPTIONMAIN = 6 ]]
then
    ~/Command-Center/editbash.sh
    exit 0
elif [[ $OPTIONMAIN = 7 ]]
then
    ~/Command-Center/dockercli.sh
    exit 0
elif [[ $OPTIONMAIN = 8 ]]
then
    ~/Command-Center/file_browser.sh
    exit 0
elif [[ $OPTIONMAIN = 9 ]]
then
    ~/Command-Center/file_search.sh
    exit 0
elif [[ $OPTIONMAIN = 10 ]]
then
    ~/Command-Center/misc_scripts/misc.sh
    exit 0
elif [[ $OPTIONMAIN = h ]] || [[ $OPTIONMAIN = H ]]
then
    ~/Command-Center/help_scripts/help.sh
elif [[ $OPTIONMAIN = Q ]] || [[ $OPTIONMAIN = q ]]
then
    clear
    echo -e "\e[1;32mThanks for using the Command Center\e[0m"
    echo -e "\e[1;35m         * * * * * *\e[0m"
    echo -e "\e[1;33m         > \e[1;32mbye bye\e[0m"
    sleep 1.25
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep .5
    ~/Command-Center/command-center.sh
fi
