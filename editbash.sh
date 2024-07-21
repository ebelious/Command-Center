#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# [5] Bash dot files
# This is used to easily locate and edit bash config files
#

clear
echo -e "\e[1;32mBash Files\e[0m"
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "\e[1;32m[\e[1;36m0\e[1;32m]\e[0m .bashrc"
echo -e "\e[1;32m[\e[1;36m1\e[1;32m]\e[0m .bash_profile"
echo -e "\e[1;32m[\e[1;36m2\e[1;32m]\e[0m .inputrc"
echo ''
echo -e "\e[1;32mZsh Files\e[0m"
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "\e[1;32m[\e[1;36m3\e[1;32m]\e[0m .zshrc"
echo -e "\e[1;32m[\e[1;36m4\e[1;32m]\e[0m .zsh_profile"
echo''
echo -e "\e[1;32mMisc Files\e[0m"
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "\e[1;32m[\e[1;36m5\e[1;32m]\e[0m conky"
echo -e "\e[1;32m[\e[1;36m6\e[1;32m]\e[0m kitty"
echo -e "\e[1;32m[\e[1;36m6\e[1;32m]\e[0m alacritty"
echo -e "\e[1;32m[\e[1;36m7\e[1;32m]\e[0m fastfetch"
echo''
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
echo ""
read -p ': ' OPTIONBASH

# Making the selectoionas open certain files
if [[ $OPTIONBASH = 0 ]]
then
    vim ~/.bashrc
    ./editbash.sh
elif [[ $OPTIONBASH = 1 ]]
then
    vim ~/.bash_profile
    ./editbash.sh
elif [[ $OPTIONBASH = 2 ]]
then
    vim ~/.inputrc
    ./editbash.sh
elif [[ $OPTIONBASH = 3 ]]
then
    vim ~/.zshrc
    ./editbash.sh
elif [[ $OPTIONBASH = 4 ]]
then
    vim ~/.zsh_profile
    ./editbash.sh
elif [[ $OPTIONBASH = 5 ]]
then
    vim ~/.config/conky/conky.config
    ./editbash.sh
elif [[ $OPTIONBASH = 6 ]]
then
    vim ~/.config/alacritty/alacritty.toml
    ./editbash.sh
elif [[ $OPTIONBASH = 7 ]]
then
    vim ~/.config/fastfetch/config.jsonc
    ./editbash.sh
elif [[ $OPTIONBASH = q ]] || [[ $OPTIONBASH = Q ]]
then
    ./command-center.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep .5
    ./editbash.sh
fi
