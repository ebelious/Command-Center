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
echo -e "\e[1;32m[\e[1;36m4\e[1;32m]\e[0m Interface and Port"
echo -e "\e[1;32m[\e[1;36m5\e[1;32m]\e[0m Source, Destination, and Port"

echo
read -p 'Choose Option: ' OPTION
clear
if [[ $OPTION = 0 ]]
then
    ip -c a
    echo
    read -p 'What is the interface: ' INTERFACE
    sudo grc tcpdump -A -i $INTERFACE
    ./network_scripts/tcp_dump.sh
fi
if [[ $OPTION = 1 ]]
then
    read -p 'What is the port: ' PORT
    sudo grc tcpdump -A port $PORT
    ./network_scripts/tcp_dump.sh
fi
if [[ $OPTION = 2 ]]
then
    read -p 'What is the destination: ' TARGET
    sudo grc tcpdump -A dst $TARGET
    ./network_scripts/tcp_dump.sh
fi
if [[ $OPTION = 3 ]]
then
    ip -c a
    echo
    read -p 'What is the destination: ' SOURCE
    sudo grc tcpdump -A src $SOURCE
    ./network_scripts/tcp_dump.sh
fi
if [[ $OPTION = 4 ]]
then
    ip -c a
    echo
    read -p 'What interface: ' INTERFACE
    read -p 'What is the port: ' PORT
    sudo grc tcpdump -A -i $INTERFACE and port $PORT
    ./network_scripts/tcp_dump.sh
fi
if [[ $OPTION = 5 ]]
then
    ip -c a
    echo
    read -p 'What is the source: ' SOURCE
    read -p 'What is the destination: ' TARGET
    read -p 'What is the port: ' PORT
    sudo grc tcpdump -A src $SOURCE and dst $TARGET and port $PORT
    ./network_scripts/tcp_dump.sh
fi
if [[ $OPTION = q ]] || [[ $OPTION = Q ]]
then
    ./network_scripts/network.sh
    exit 0
fi
if [[ $OPTIONNMAP = r ]] || [[ $OPTIONNMAP = R ]]
then
    ./network_scripts/tcp_dump.sh
    exit 0
else
./network_scripts/network.sh
exit 0
fi
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONNMAP
if [[ $OPTIONNMAP = r ]] || [[ $OPTIONNMAP = R ]]
then
    ./network_scripts/tcp_dump.sh
    exit 0
elif [[ $OPTIONNMAP = q ]] || [[ $OPTIONNMAP = Q ]]
then
    ./network_scripts/network.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ./network_scripts/network.sh
    exit 0
fi
