

# This is the selection menu
cd ~/Documents/Projects/Command-Center/
clear
figlet CommandCenter
echo -e "Found at: \e[3;33mhttps://github.com/ebelious/Command-Center\e[0m"
#printf '%s  ____                                          _  ____           _ '
#printf '%s / ___|___  _ __ ___  _ __ ___   __ _ _ __   __| |/ ___|___ _ __ | |_ ___ _ __ '
#printf '%s | |   / _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` | |   / _ \ '_ \| __/ _ \ '__| '
#printf '%s | |__| (_) | | | | | | | | | | | (_| | | | | (_| | |__|  __/ | | | ||  __/ | '
#printf '%s \____\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|\____\___|_| |_|\__\___|_| '
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "Hello \e[1;36m${USERNAME}\e[0m,"
echo
echo -e "\e[1;mWelcome to the Command Center\e[0m"
echo -e "\e[3;32m-- What is our task?\e[0m"
printf '=%.0s' {1..30} ; printf '=\n'
echo -e "\e[1;32m[\e[1;36m0\e[1;32m]\e[0m Update System"
echo -e "\e[1;32m[\e[1;36m1\e[1;32m]\e[0m Hardware Information"
echo -e "\e[1;32m[\e[1;36m2\e[1;32m]\e[0m Processes & Utilization"
echo -e "\e[1;32m[\e[1;36m3\e[1;32m]\e[0m Users and Groups"
echo -e "\e[1;32m[\e[1;36m4\e[1;32m]\e[0m Network"
echo -e "\e[1;32m[\e[1;36m5\e[1;32m]\e[0m (.) files"
echo -e "\e[1;32m[\e[1;36m6\e[1;32m]\e[0m Docker"
echo
echo -e "\e[1;32m[\e[1;31mQ\e[1;32m]\e[0m Quit"
printf '=%.0s' {1..30} ; printf '=\n'
# This is running the script for the selected menu option
read -p ': ' OPTION

if [[ $OPTION = 0 ]]
then
    ./update.sh
    exit 0
fi
if [[ $OPTION = 1 ]]
then
    ./enviroment.sh
    exit 0
fi
if [[ $OPTION = 2 ]]
then
    ./processes.sh
    exit 0
fi
if [[ $OPTION = 3 ]]
then
    ./users-groups.sh
    exit 0
fi
if [[ $OPTION = 4 ]]
then
    ./network.sh
    exit 0
fi
if [[ $OPTION = 5 ]]
then
    ./editbash.sh
    exit 0
fi
if [[ $OPTION = 6 ]]
then
    ./dockercli.sh
    exit 0
fi
if [[ $OPTION = Q ]] || [[ $OPTION = q ]]
then
    exit 0
else
    echo -e "\e[1;31mInvalid Option\e[0m"
    sleep .5
    ./command-center.sh
    exit 0
fi
