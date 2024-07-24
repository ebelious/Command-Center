#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Misc - Typing Test
# This is browsh cli web browser
#

clear
echo -e "\e[1;32mBasic Instructions\e[0m"
echo
echo -e "\e[1;32mF1 \e[0mOpens the documentation"
echo -e "\e[1;32mARROW \e[0mKEYS, PGUP, PGDN Scrolling"
echo -e "\e[1;32mCTRL+q  \e[0mExit app"
echo -e "\e[1;32mCTRL+1  \e[0mFocus the URL bar"
echo -e "\e[1;32mBACKSPACE  \e[0mGo back in history"
echo -e "\e[1;32mCTRL+r  \e[0mReload page"
echo -e "\e[1;32mCTRL+t  \e[0mNew tab"
echo -e "\e[1;32mCTRL+w  \e[0mClose tab"
echo -e "\e[1;32mCTRL+\  \e[0mCycle to next tab"
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
#Battery life icon
PERCENT=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}' | tr -d '%')
if [[ $PERCENT = 100 ]]
then
    batteryprompt()
    {
        printf "%*s" $COLUMNS "[󰁹 $PERCENT]"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -le 90 ]]
then
    batteryprompt()
    {
        printf "%*s" $COLUMNS "[󰂁 $PERCENT]"
    }
    tput sc; batteryprompt; tput rc
elif [[ $Percent -le 70 ]]
then
    batteryprompt()
    {
        printf "%*s" $COLUMNS "[󰂀 $PERCENT]"
        }
        tput sc; batteryprompt; tput rc
elif [[ $PERCENT -le 60 ]]
then
    batteryprompt()
    {
        printf "%*s" $COLUMNS "[󰁿 $PERCENT]"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -le 50 ]]
then
    batteryprompt()
    {
        printf "%*s" $COLUMNS "[󰁾 $PERCENT]"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -le 40 ]]
then
    batteryprompt()
    {
    printf "%*s" $COLUMNS "[󰁽 $PERCENT]"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -le 30 ]]
then
    batteryprompt()
    {
    printf "%*s" $COLUMNS "[󰁼 $PERCENT]"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -le 20 ]]
then
    batteryprompt()
    {
    printf "%*s" $COLUMNS "[󰁻 $PERCENT]"
    }
    tput sc; batteryprompt; tput rc
elif [[ $PERCENT -le 10 ]]
then
    batteryprompt()
    {
    printf "%*s" $COLUMNS "[󰁺 $PERCENT]"
    }
    tput sc; batteryprompt; tput rc
    else
    echo 󰂃 $PERCENT
fi
echo
# time stamp
rightprompt()
{
    printf "%*s" $COLUMNS "[$(date +%r)]"
}
tput sc; rightprompt; tput rc
read -p ': ' OPTIONWEB
if [[ $OPTIONWEB = r ]] || [[ $OPTIONWEB = R ]]
then
    sudo docker run --rm -it browsh/browsh
    ./Command-Center/misc_scripts/web_cli.sh
elif [[ $OPTIONWEB = q ]] || [[ $OPTIONWEB = Q ]]
then
    ~/Command-Center/misc_scripts/misc.sh
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ~/Command-Center/misc_scripts/misc.sh
fi
