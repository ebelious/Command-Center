#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Enviroment Information Menu
# This is for printing out enviromant information such as networking info, sensors
#

# Variables
DATEENV=$(date | awk '{print $7 $2 $3}') # Used to store timestamp for file creation

# Displays the enviroemnt info
clear
echo -e "\e[1;32mHardware Center\e[0m"
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "Host: \e[1;36m$HOSTNAME\e[0m"
echo -e "\e[1;32m[\e[1;36m0\e[1;32m]\e[0m Temperature"
echo -e "\e[1;32m[\e[1;36m1\e[1;32m]\e[0m CPU"
echo -e "\e[1;32m[\e[1;36m2\e[1;32m]\e[0m BIOS"
echo -e "\e[1;32m[\e[1;36m3\e[1;32m]\e[0m RAM"
echo -e "\e[1;32m[\e[1;36m4\e[1;32m]\e[0m System"
echo -e "\e[1;32m[\e[1;36m5\e[1;32m]\e[0m PCI"
echo -e "\e[1;32m[\e[1;36m6\e[1;32m]\e[0m Disk info"
echo -e "\e[1;32m[\e[1;36m7\e[1;32m]\e[0m Disks Dev By"
echo -e "\e[1;32m[\e[1;36m8\e[1;32m]\e[0m Modify Disk"
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
read -p ': ' OPTIONENV
echo
if [[ $OPTIONENV = 0 ]]
then
    sensors | less
    ~/Command-Center/enviroment_scripts/enviroment.sh
elif [[ $OPTIONENV = 1 ]]
then
    lscpu | less
    ~/Command-Center/enviroment_scripts/enviroment.sh
elif [[ $OPTIONENV = 2 ]]
then
    sudo dmidecode -t bios | less
    ~/Command-Center/enviroment_scripts/enviroment.sh
elif [[ $OPTIONENV = 3 ]]
then
    sudo dmidecode -t memory | less
    ~/Command-Center/enviroment_scripts/enviroment.sh
elif [[ $OPTIONENV = 4 ]]
then
    sudo dmidecode -t system | less
    ~/Command-Center/enviroment_scripts/enviroment.sh
elif [[ $OPTIONENV = 5 ]]
then
    sudo lspci | less
    ~/Command-Center/enviroment_scripts/enviroment.sh
elif [[ $OPTIONENV = 6 ]]
then
    ~/Command-Center/enviroment_scripts/disk_info.sh
elif [[ $OPTIONENV = 7 ]]
then
    ~/Command-Center/enviroment_scripts/disk_dev.sh
    exit 0
elif [[ $OPTIONENV = 8 ]]
then
    ~/Command-Center/enviroment_scripts/parted.sh
    exit 0
elif [[ $OPTIONENV = q ]] || [[ $OPTIONENV = Q ]]
then
    ~/Command-Center/command-center.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep .5
    ~/Command-Center/enviroment_scripts/enviroment.sh
fi
