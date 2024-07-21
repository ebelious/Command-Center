#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Network Menu
# This is used for testing, and changing networking information
#
clear
echo
echo -e "\e[1;32mNetwork Center\e[0m"
NETUSED=$(nmcli |  grep connected | head -1)
echo -e "     Network: $NETUSED"
networkctl status 2> /dev/null | grep Address | tail -n 1
networkctl status 2> /dev/null | grep Gateway | tail -n 1
echo -e "\e[1;32mInternet\e[0m"
for x in 8.8.8.8
do
    if ping -q -c 1 -W 1 $x &> /dev/null
    then
        echo -e "\e[1;36m     Good\e[0m"
    else
        echo -e "\e[1;31mNo Connection\e[0m"
    fi
done

printf '=%.0s' {1..30} ; printf '=\n'
echo -e "\e[1;32m[\e[1;36m0\e[1;32m]\e[0m Speedtest"
echo -e "\e[1;32m[\e[1;36m1\e[1;32m]\e[0m Network Info"
echo -e "\e[1;32m[\e[1;36m2\e[1;32m]\e[0m Ping"
echo -e "\e[1;32m[\e[1;36m3\e[1;32m]\e[0m Traceroute"
echo -e "\e[1;32m[\e[1;36m4\e[1;32m]\e[0m Netstat"
echo -e "\e[1;32m[\e[1;36m5\e[1;32m]\e[0m Nslookup"
echo -e "\e[1;32m[\e[1;36m6\e[1;32m]\e[0m Bandwidth"
echo -e "\e[1;32m[\e[1;36m7\e[1;32m]\e[0m Host Detection"
echo
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONNET
if [[ $OPTIONNET = 0 ]]
then
    ./speedtest.sh
    exit 0
elif [[ $OPTIONNET = 1 ]]
then
    ./net_info.sh
    exit 0
elif [[ $OPTIONNET = 2 ]]
then
    ./ping.sh
    exit 0
elif [[ $OPTIONNET = 3 ]]
then
    ./traceroute.sh
    exit 0
elif [[ $OPTIONNET = 4 ]]
then
    ./netstat.sh
    exit 0
elif [[ $OPTIONNET = 5 ]]
then
    ./nslookup.sh
    exit 0
elif [[ $OPTIONNET = 6 ]]
then
    ./iftop.sh
    exit 0
elif [[ $OPTIONNET = 7 ]]
then
    ./host_detection.sh
elif [[ $OPTIONNET = q ]] || [[ $OPTIONNET = Q ]]
then
    ./command-center.sh
    exit 0
fi
