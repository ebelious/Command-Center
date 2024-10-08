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
CLEAN=$(cat ~/Command-Center/security_scripts/scan.tmp | grep 'clean' | tr -d '"'> ~/Command-Center/security_scripts/clean.tmp && wc -l ~/Command-Center/security_scripts/clean.tmp | awk '{print $1}')
UNRATED=$(cat ~/Command-Center/security_scripts/scan.tmp | grep 'unrated' | tr -d '"'> ~/Command-Center/security_scripts/unrated.tmp && wc -l ~/Command-Center/security_scripts/unrated.tmp | awk '{print $1}')
COMMENTS=$(vt ip comments $TARGET | grep 'text:' > ~/Command-Center/security_scripts/comments.tmp)
RESOLUTIONS=$(vt ip resolutions $TARGET  > ~/Command-Center/security_scripts/resolutions.tmp )
TOTAL=$(($CLEAN + $MALICIOUS + $UNRATED))
CN=$(cat ~/Command-Center/security_scripts/scan.tmp | tr -d '"' | awk '/subject:/,/thumbprint:/' | grep CN: | tr -d 'CN:' | tr -d ' ')
COUNTRY=$(cat ~/Command-Center/security_scripts/scan.tmp | awk '/- _id:/,/last_analysis_date:/' | grep country | tr -d 'country:' | tr -d '"' | tr -d ' ' )
CONTINENT=$(cat ~/Command-Center/security_scripts/scan.tmp | awk '/- _id:/,/last_analysis_date:/' | grep continent | tr -d 'continent:' | tr -d '"' | tr -d ' ')
ASN=$(cat ~/Command-Center/security_scripts/scan.tmp | awk '/- _id:/,/last_analysis_date:/' | grep asn | tr -d 'asn:' | tr -d ' ')
ASOWNER=$(cat ~/Command-Center/security_scripts/scan.tmp | awk '/- _id:/,/last_analysis_date:/' | grep as_owner | tr -d 'as_owner:' | tr -d ' "' | tr -d ' ')
DST=$(cat ~/Command-Center/security_scripts/scan.tmp | awk '/- _id:/,/last_analysis_date:/' | grep '_id:' | awk '{print $3}' | tr -d '"')
clear

figlet VirusTotal
echo -e "\e[3;33mYou can see the full scan results at ~/Command-Center/security_scripts/scan.tmp \nThese results are overwritten with every scan.\e[0m"
echo
echo -e "\e[1;32mResults\e[0m"
printf '=%.0s' {1..30} ; printf '=\n'
39 echo -e "The IP \e[4;35m$DST\e[0m belongs to - $ASOWNER - ASN:$ASN - $COUNTRY/$CONTINENT"
echo
echo -e "\e[1;36mVerdicts:\e[0m \e[1;31m$MALICIOUS\e[0m | \e[1;32m$CLEAN\e[0m | \e[1;37m$UNRATED\e[0m / $TOTAL"
echo
echo -e "\e[1;36mComments:\e[0m"
echo $COMMENT && cat ~/Command-Center/security_scripts/comments.tmp | grep '"' | tr -d '"' | tr -d ':' | sed 's/text/ \\/g'
echo
echo -e "\e[1;36mResolutions:\e[0m"
echo $RESOLUTIONS && cat ~/Command-Center/security_scripts/resolutions.tmp | grep 'host_name:' |  tr -d '"' | sed 's/host_name:/ \\/g'
echo
echo -e "\e[1;36mLatest SSL Certificate:\e[0m | \e[1;32m$CN\e[0m"
cat ~/Command-Center/security_scripts/scan.tmp | tr -d '"' | awk '/last_https_certificate:/,/last_modification_date: /'
echo
echo -e "\e[1;36mwhois:\e[0m"
cat ~/Command-Center/security_scripts/scan.tmp | tr -d '"' | awk '/whois:/,/whois_date: /'
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
