#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# This installs the Preqs for this to run
# This installs the the script into binaries
# Prereqs: figlet htop lm_sensors htop vim lazydocker(git repo) dmidecode
#

chmod +x ./*.sh
chmod 755 ./*.sh
#identifiying the OS to use proper package manager and installing prereqs
OS=$(head -1 /etc/os-release | sed 's/NAME="//'| awk '{print $1}')
# Fedora / Redhat
if [[ $OS = Fedora || RedHat ]]
then
    sudo dnf install figlet htop lm_sensors htop vim dmidecode docker git
    clear
    echo -e "\e[1;32mUpdating Flatpak...\e[0m"
# Install lazydocker from Github
    echo -e "\e[1;32mPress 'q' to continue installation after you see lazydocker screen\e[0m"
    sleep 3
    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
    ~/home/Documents/Projects/Command-center
    ./command-center.sh
#Debian/Ubuntu
elif [[ $OS = Pretty-Ubuntu || PRETTY_Debian ]]
then
    sudo apt install figlet htop lm_sensors htop vim dmidecode docker git
    clear
    echo -e "\e[1;32mUpdating Flatpak...\e[0m"
# Install lazydocker from Github
    echo -e "\e[1;32mPress 'q' to continue installation after you see lazydocker screen\e[0m"
    sleep 3
    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
    ~/home/Documents/Projects/Command-center
    ./command-center.sh
# Arch
elif [[ $OS = Arch ]] || [[ $OS = Manjaro ]]
then
    sudo pcaman -S figlet htop lm_sensors htop vim dmidecode docker git
    clear
    echo -e "\e[1;32mUpdating Flatpak...\e[0m"
# Install lazydocker from Github
    echo -e "\e[1;32mPress 'q' to continue installation after you see lazydocker screen\e[0m"
    sleep 3
    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
    ~/home/Documents/Projects/Command-center
    ./command-center.sh
# Open Suse
elif [[ $OPTION = ff ]]
then
    sudo zypper install figlet htop lm_sensors htop vim dmidecode docker git
    clear
    echo -e "\e[1;32mUpdating Flatpak...\e[0m"
# Install lazydocker from Github
    echo -e "\e[1;32mPress 'q' to continue installation after you see lazydocker screen\e[0m"
    sleep 3
    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
    ~/home/Documents/Projects/Command-center
    ./command-center.sh
# Alpine
elif [[ $OPION = alpine ]]
then
    doas apk add figlet htop lm_sensors htop vim dmidecode
    clear
    echo -e "\e[1;32mUpdating Flatpak...\e[0m"
# Install lazydocker from Github
    echo -e "\e[1;32mPress 'q' to continue installation after you see lazydocker screen\e[0m"
    sleep 3
    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
    ~/home/Documents/Projects/Command-center
    ./command-center.sh
else
    echo "\e[1;31mYour System is no supported...\e[0m"
    sleep 2
    ./command-center.sh
fi
