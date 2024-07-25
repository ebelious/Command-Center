#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Security - IP Intelligence
#

# Variables
export GOBIN=`go env GOPATH`/bin
export PATH=$PATH:$GOBIN
clear
echo
read -p 'Enter the IP: ' TARGET
SCAN=$(vt ip $TARGET > ~/Command-Center/security_scripts/scan.tmp)
MALICIOUS=$(cat ~/Command-Center/security_scripts/scan.tmp | grep 'malicious' | tr -d '"'> ~/Command-Center/security_scripts/malicious.tmp && wc -l ~/Command-Center/security_scripts/malicious.tmp | awk '{print $1}')
CLEAN=$(cat ~/Command-Center/security_scripts/scan.tmp | grep 'malicious' | tr -d '"'> ~/Command-Center/security_scripts/clean.tmp && wc -l ~/Command-Center/security_scripts/clean.tmp | awk '{print $1}')
UNRATED=$(cat ~/Command-Center/security_scripts/scan.tmp | grep 'unrated' | tr -d '"'> ~/Command-Center/security_scripts/unrated.tmp && wc -l ~/Command-Center/security_scripts/unrated.tmp | awk '{print $1}')
COMMENTS=$(vt ip related_comments $TARGET | grep 'text:' > ~/Command-Center/security_scripts/comments.tmp)
RESOLUTIONS=$(vt ip resolutions $TARGET  > ~/Command-Center/security_scripts/resolutions.tmp )
SSL=$( vt ip historical_ssl_certificates $TARGET > ssl.tmp)
TOTAL=$(($CLEAN + $MALICIOUS + $UNRATED))
clear
figlet VirusTotal
echo -e "\e[1;32mResults\e[0m"
echo
echo -e "\e[1;36mVotes:\e[0m \e[1;31m$MALICIOUS\e[0m | \e[1;32m$CLEAN\e[0m | \e[1;37m$UNRATED\e[0m / $TOTAL"
echo
echo -e "\e[1;36mComments:\e[0m"
echo $COMMENT && cat ~/Command-Center/security_scripts/comments.tmp | grep '"' | tr -d '"' | tr -d ':' | sed 's/text/ \\/g'
echo
echo -e "\e[1;36mResolutions:\e[0m"
echo $RESOLUTIONS && cat ~/Command-Center/security_scripts/resolutions.tmp | grep 'host_name:' |  tr -d '"' | sed 's/host_name:/ \\/g'
echo
echo -e "\e[1;36mMost Recent SSL:\e[0m"
echo $SSL && grc head -64 ssl.tmp
echo
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONMEN
if [[ $OPTIONMEN = R ]] || [[ $OPTIONMEN = r ]]
then
    ~/Command-Center/security_scripts/virustotal.sh
    exit 0
elif [[ $OPTIONMEN = q ]] || [[ $OPTIONMEN = Q ]]
then
    ~/Command-Center/security_scripts/security.sh
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep 1
    ~/Command-Center/security_scripts/security.sh
    exit 0
fi