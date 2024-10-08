#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
#  Enviroment - Show Disk Information
# This Script is made to display disk information and mount points
#

# Variables
# This wil disp[lay info from df -h and lsblk
clear
echo
echo -e '\e[1;32mDisk Space\e[0m'
printf '=%.0s' {1..30} ; printf '=\n'
grc df -h
echo
echo
echo -e '\e[1;32mMount Points\e[0m'
printf '=%.0s' {1..30} ; printf '=\n'
grc lsblk
echo
echo
echo -e '\e[1;32mUSB Devices\e[0m'
printf '=%.0s' {1..30} ; printf '=\n'
grc lsusb
echo
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
echo
read -p ': ' OPTIONDISK

# This will alow the user to output info to a file oe exit back to command-center menu
if [[ $OPTIONDISK = q ]] || [[ $OPTIONDISK = Q ]]
then
    ~/Command-Center/enviroment_scripts/enviromet.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep .5
    ~/Command-Center/enviroment_scripts/disk_info.sh
fi
