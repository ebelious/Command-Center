#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Enviroment Information disk by Dev
# This is for printing out enviromant information such as networking info, sensors
#

clear
echo -e "\e[1;32mDisks Dev By ...\e[0m"
echo
ls -l --color=auto /dev/disk/by-* | less --use-color
./enviroment.sh
exit 0
