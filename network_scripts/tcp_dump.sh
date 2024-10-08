#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Netowrk - TCP Dump
# This is a script that runs basic tcp dumps
#

clear
echo
echo -e "\e[1;32mTCP Dump\e[0m"
echo
ip -c a
echo
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "\e[3;33mOnly captured packets will be shown\e[0m"
echo
echo -e "\e[1;32m[\e[1;36m0\e[1;32m]\e[0m Interface"
echo -e "\e[1;32m[\e[1;36m1\e[1;32m]\e[0m Port"
echo -e "\e[1;32m[\e[1;36m2\e[1;32m]\e[0m Destination"
echo -e "\e[1;32m[\e[1;36m3\e[1;32m]\e[0m Source"
echo -e "\e[1;32m[\e[1;36m4\e[1;32m]\e[0m Source and Destination"
echo -e "\e[1;32m[\e[1;36m5\e[1;32m]\e[0m Source, Destination, and Port"

echo
read -p 'Choose Option: ' OPTION
clear
if [[ $OPTION = 0 ]]
then
    ip -c a
    echo
    read -p 'What is the interface: ' INTERFACE
    clear
    sudo grc tcpdump -A -i $INTERFACE
    ~/Command-Center/network_scripts/tcp_dump.sh
fi
if [[ $OPTION = 1 ]]
then
    read -p 'What is the port: ' PORT
    clear
    sudo grc tcpdump -A port $PORT
    ~/Command-Center/network_scripts/tcp_dump.sh
fi
if [[ $OPTION = 2 ]]
then
    read -p 'What is the destination: ' TARGET
    clear
    sudo grc tcpdump -A dst $TARGET
    ~/Command-Center/network_scripts/tcp_dump.sh
fi
if [[ $OPTION = 3 ]]
then
    ip -c a
    echo
    read -p 'What is the source: ' SOURCE
    clear
    sudo grc tcpdump -A src $SOURCE
    ~/Command-Center/network_scripts/tcp_dump.sh
fi
if [[ $OPTION = 4 ]]
then
    ip -c a
    echo
    read -p 'What is the source: ' SOURCE
    read -p 'What is the destination: ' TARGET
    clear
    sudo grc tcpdump -A src $SOURCE and dst $TARGET
    ~/Command-Center/network_scripts/tcp_dump.sh
fi
if [[ $OPTION = 5 ]]
then
    ip -c a
    echo
    read -p 'What is the source: ' SOURCE
    read -p 'What is the destination: ' TARGET
    read -p 'What is the port: ' PORT
    clear
    sudo grc tcpdump -A src $SOURCE and dst $TARGET and port $PORT
    ~/Command-Center/network_scripts/tcp_dump.sh
fi
if [[ $OPTION = q ]] || [[ $OPTION = Q ]]
then
    ~/Command-Center/network_scripts/network.sh
    exit 0
fi
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONNMAP
if [[ $OPTIONNMAP = r ]] || [[ $OPTIONNMAP = R ]]
then
    ~/Command-Center/network_scripts/tcp_dump.sh
    exit 0
elif [[ $OPTIONNMAP = q ]] || [[ $OPTIONNMAP = Q ]]
then
    ~/Command-Center/network_scripts/network.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ~/Command-Center/network_scripts/network.sh
    exit 0
fi
