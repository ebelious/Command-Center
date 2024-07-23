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
#printf '%s  ____                                          _  ____           _ '
#printf '%s / ___|___  _ __ ___  _ __ ___   __ _ _ __   __| |/ ___|___ _ __ | |_ ___ _ __ '
#printf '%s | |   / _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` | |   / _ \ '_ \| __/ _ \ '__| '
#printf '%s | |__| (_) | | | | | | | | | | | (_| | | | | (_| | |__|  __/ | | | ||  __/ | '
#printf '%s \____\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|\____\___|_| |_|\__\___|_| '
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "Hello \e[1;36m${USERNAME}\e[0m,"
echo -e "\e[1;mWelcome to the Command Center\e[0m"
echo
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "\e[3;32m-- What is our task?\e[0m"
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "\e[1;32m[\e[1;36m0\e[1;32m]\e[0m Update System"
echo -e "\e[1;32m[\e[1;36m1\e[1;32m]\e[0m Hardware Information"
echo -e "\e[1;32m[\e[1;36m2\e[1;32m]\e[0m Processes & Utilization"
echo -e "\e[1;32m[\e[1;36m3\e[1;32m]\e[0m Users and Groups"
echo -e "\e[1;32m[\e[1;36m4\e[1;32m]\e[0m Network"
echo -e "\e[1;32m[\e[1;36m5\e[1;32m]\e[0m Security"
echo -e "\e[1;32m[\e[1;36m6\e[1;32m]\e[0m (.) Files"
echo -e "\e[1;32m[\e[1;36m7\e[1;32m]\e[0m Docker"
echo -e "\e[1;32m[\e[1;36m8\e[1;32m]\e[0m Browse Files"
echo -e "\e[1;32m[\e[1;36m9\e[1;32m]\e[0m File Search"
echo
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
# This is running the script for the selected menu option
read -p ': ' OPTION

if [[ $OPTION = 0 ]]
then
    ./update.sh
    exit 0
fi
if [[ $OPTION = 1 ]]
then
    ./enviroment_scripts/enviroment.sh
    exit 0
fi
if [[ $OPTION = 2 ]]
then
    ./processes.sh
    exit 0
fi
if [[ $OPTION = 3 ]]
then
    ./users-groups.sh
    exit 0
fi
if [[ $OPTION = 4 ]]
then
    ./network_scripts/network.sh
    exit 0
fi
if [[ $OPTION = 5 ]]
then
    ./security_scripts/security.sh
fi
if [[ $OPTION = 6 ]]
then
    ./editbash.sh
    exit 0
fi
if [[ $OPTION = 7 ]]
then
    ./dockercli.sh
    exit 0
fi
if [[ $OPTION = 2 ]]
then
    ./file_browser.sh
    exit 0
fi
if [[ $OPTION = 9 ]]
then
    ./file_search.sh
    exit 0
fi
if [[ $OPTION = Q ]] || [[ $OPTION = q ]]
then
    clear
    echo -e "\e[1;32mThanks for using the Command Center\e[0m"
    echo -e "\e[1;35m         * * * * * *\e[0m"
    echo -e "\e[1;33m         > \e[1;32mbye bye\e[0m"
    sleep 2
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep .5
    ./command-center.sh
    exit 0
fi
