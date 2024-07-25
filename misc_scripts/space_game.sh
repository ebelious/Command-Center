#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
# This is a space shooter game shippy

OS=$(head -1 /etc/os-release | sed 's/NAME="//'| awk '{print $1}')
if [[ $OS = Fedora ]] || [[ $OS = RedHat ]]
then
    clear
    shippy
    ~/Command-Center/misc_scripts/misc.sh
elif [[ $OS = PRETTY_Ubuntu ]] ||[[ $OS = PRETTY_Debian ]] || [[ $OS = Ubuntu ]] || [[ $OS = Debian ]]
then
    clear
    ninvaders
    ~/Command-Center/misc_scripts/misc.sh
#elif [[ $OS = Arch ]] || [[ $OS = Manjaro ]]
#then
fi
