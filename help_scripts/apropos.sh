#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Help - Search command by Function
# Thisis using apropose
#

# Allows Color in 'less'
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
export LESS_TERMCAP_md=$(tput bold; tput setaf 6) # cyan
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4) # yellow on blue
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7) # white
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)
export GROFF_NO_SGR=1         # For Konsole and Gnome-terminal

clear
echo -e '\e[1;32mCommand by Function\e[0m'
echo -e '\e[3;33mex. search\e[0m'
read -p 'What manual would you like to search: ' OPTIONPRO
clear
if [[ $OPTIONPRO = q ]] || [[ $OPTIONPRO = Q ]]
then
    ~/Command-Center/help_scripts/help.sh
    exit 0
else
grc apropos $OPTIONPRO
fi
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTION

if [[ $OPTION = r ]] || [[ $OPTION = R ]]
then
    ~/Command-Center/help_scripts/apropos.sh
    exit 0
elif [[ $OPTION = q ]] || [[ $OPTION = Q ]]
then
    ~/Command-Center/help_scripts/help.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ~/Command-Center/help_scripts/help.sh
    exit 0
fi
