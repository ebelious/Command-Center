#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Security - Hash Intelligence
# This uses a search for hashes using virustotal API
#

export GOBIN=`go env GOPATH`/bin
export PATH=$PATH:$GOBIN
clear
echo
# Test Hash 67EB9077AB29C8A45578C6636D68014E60AEB0F77FBFA5C48FB93EE5E0D85E41
read -p 'Enter the hash: ' HASH
SCAN=$(vt file $HASH > ~/Command-Center/security_scripts/hash-scan.tmp)
MALICIOUS=$(cat ~/Command-Center/security_scripts/hash-scan.tmp | grep 'malicious' | tr -d '"'> ~/Command-Center/security_scripts/malicious-hash.tmp && wc -l ~/Command-Center/security_scripts/malicious-hash.tmp | awk '{print $1}')
CLEAN=$(cat ~/Command-Center/security_scripts/hash-scan.tmp | grep 'malicious' | tr -d '"'> ~/Command-Center/security_scripts/clean-hash.tmp && wc -l ~/Command-Center/security_scripts/clean-hash.tmp | awk '{print $1}')
UNRATED=$(cat ~/Command-Center/security_scripts/hash-scan.tmp | grep 'undetected' | tr -d '"'> ~/Command-Center/security_scripts/unrated-hash.tmp && wc -l ~/Command-Center/security_scripts/unrated-hash.tmp | awk '{print $1}')
TOTAL=$(($CLEAN + $MALICIOUS + $UNRATED))
clear
figlet VirusTotal
echo -e "\e[3;33mYou can see the full scan results at ~/Command-Center/security_scripts/hash-scan.tmp \n These results are overwritten with every scan.\e[0m"
echo
echo -e "\e[1;32mResults\e[0m"
echo
echo -e "\e[1;36mVotes:\e[0m \e[1;31m$MALICIOUS\e[0m | \e[1;32m$CLEAN\e[0m | \e[1;37m$UNRATED\e[0m / $TOTAL"
echo
cat ~/Command-Center/security_scripts/hash-scan.tmp | awk '/- _id:/,/last_analysis_date:/'
echo
echo -e "\e[1;32m[\e[1;36mR\e[1;32m]\e[0m Re-Run"
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
read -p ': ' OPTIONMEN
if [[ $OPTIONMEN = R ]] || [[ $OPTIONMEN = r ]]
then
    ~/Command-Center/security_scripts/vt_hash.sh
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
