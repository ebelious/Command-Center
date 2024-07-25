#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Users and Groups
# This is used to generate user accounts and identify users and groups
#

# Variables
CURRENT=$(whoami)
GID=$(id -g)
GROUPS1=$(groups)
USERS=$(users)


# Listing the menu
clear
echo -e "\e[1;32mCurrent User\e[0m"
echo -e "User: $CURRENT"
echo -e "UID: $UID"
echo -e "GID: $GID"
echo ''
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "\e[1;32mUsers and Groups on the System\e[0m"
echo -e "Users: $USERS"
echo -e "Groups: $GROUPS1"
echo
printf '=%.0s' {1..30} ; printf '=\n'
echo
echo -e "\e[1;32m[\e[1;36m0\e[1;32m]\e[0m Create User"
echo -e "\e[1;32m[\e[1;36m1\e[1;32m]\e[0m Create Group"
echo
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
#Battery / color / time tabs
PERCENT=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}' | tr -d '%')
if [[ $PERCENT -le 100 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;32m󰁹\e[0m $PERCENT \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
        tput sc; batteryprompt; tput rc
elif [[ $PERCENT -le 95 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;32m󰂁\e[0m $PERCENT \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
elif [[ $Percent -le 70 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;32m󰂀\e[0m $PERCENT% \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -le 60 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;32m󰁿\e[0m $PERCENT \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -le 50 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;32m󰁾 $PERCENT \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -le 40 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;33m󰁽\e[0m $PERCENT \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -le 30 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;33m󰁼\e[0m $PERCENT \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -le 20 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;33m󰁻\e[0m $PERCENT \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -le 10 ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m \e[0;33m󰁻\e[0m $PERCENT \e[0;32m]\e[0m\e[0;32m[\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT ]]
then
    batteryprompt()
    {
        printf "%b" "\e[0;32m[\e[0m\e[0;36m󱃍\e[0m $PERCENT\e[0;32m]\e[0m\e[0;32m[\e[0m\e[0m\e[0;31m  \e[0m\e[0;32m \e[0m\e[0;33m \e[0m\e[0;34m \e[0m\e[0;35m \e[0m\e[0;36m \e[0m\e[0;37m \e[0m\e[0;32m]\e[0m\e[0;32m[\e[0m $(date +%r) \e[0;32m]\e[0m"
    }
    tput sc; batteryprompt; tput rc
fi
echo
# This is creating the account
read -p ': ' OPTIONUSER
if [[ $OPTIONUSER = 0 ]]
then
    read -p 'Enter the Username: ' NEWUSER
    read -p 'Enter the users real name: ' REALNAME
    sudo useradd -c $REALNAME -m $NEWUSER
    read -p 'Enter thier Password:' PASSW

# Creating the password for the user
    sudo echo $PASSW | sudo passwd --stdin $NEWUSER
    sudo passwd -e $NEWUSER
    echo
    echo -e "Your new user \e[1;32m$NEWUSER\e[0m has been created"
    echo -e "Username: $NEWUSER"
    echo -e "Password: $PASSW"
    echo -e "Hostname: $HOSTNAME"
    echo
    echo -e "\e[1;31mThis Screen will expire in 30 Seconds\e[0m"
    sleep 30
    ~/Command-Center/users-groups.sh
elif [[ $OPTIONUSER = q ]] || [[ $OPTIONUSER = Q ]]
then
    ~/Command-Center/command-center.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep .5
    ~/Command-Center/users-groups.sh
fi
