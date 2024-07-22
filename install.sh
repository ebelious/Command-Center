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
# Prereqs: figlet htop lm_sensors htop vim dmidecode lazydocker(git repo)
#

chmod +x ./*.sh
chmod 755 ./*.sh
#identifiying the OS to use proper package manager and installing prereqs
OS=$(head -1 /etc/os-release | sed 's/NAME="//'| awk '{print $1}')
# Fedora / Redhat
if [[ $OS = Fedora || RedHat ]]
then
    sudo dnf copr enable pennbauman/ports # for lf terminal file manager
    sudo dnf install figlet htop lm_sensors htop vim dmidecode docker git lf fzf bat curl
# Getting lazy docer git repo
    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
    clear
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
      chmod 755 msfinstall && \
      ./msfinstall
    sleep 3

    ~/home/Documents/Projects/Command-center
    ./command-center.sh
#Debian/Ubuntu
elif [[ $OS = PRETTY-Ubuntu ]] ||[[ $OS = PRETTY_Debian ]] || [[ $OS = Ubuntu ]] || [[ $OS = Debian ]]
then
    sudo apt install figlet htop lm_sensors htop vim dmidecode docker git lf fzf bat curl
    clear
    echo -e "\e[1;32mUpdating Flatpak...\e[0m"
# Install lazydocker from Github
    echo -e "\e[1;32mPress 'q' to continue installation after you see lazydocker screen\e[0m"
    sleep 3
    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
    clear
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
      chmod 755 msfinstall && \
      ./msfinstall
    ~/home/Documents/Projects/Command-center
    ./command-center.sh
# Arch
elif [[ $OS = Arch ]] || [[ $OS = Manjaro ]]
then
    sudo pcaman -S install figlet htop lm_sensors htop vim dmidecode docker git lf fzf bat curl
    clear
    echo -e "\e[1;32mUpdating Flatpak...\e[0m"
# Install lazydocker from Github
    echo -e "\e[1;32mPress 'q' to continue installation after you see lazydocker screen\e[0m"
    sleep 3
    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
    clear
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
      chmod 755 msfinstall && \
      ./msfinstall
    ~/home/Documents/Projects/Command-center
    ./command-center.sh
# Open Suse
elif [[ $OPTION = ff ]]
then
    sudo zypper install install figlet htop lm_sensors htop vim dmidecode docker git lf fzf bat curl
    clear
    echo -e "\e[1;32mUpdating Flatpak...\e[0m"
# Install lazydocker from Github
    echo -e "\e[1;32mPress 'q' to continue installation after you see lazydocker screen\e[0m"
    sleep 3
    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
   clear
   curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
     chmod 755 msfinstall && \
     ./msfinstall
    ~/home/Documents/Projects/Command-center
    ./command-center.sh
# Alpine
elif [[ $OPION = alpine ]]
then
    doas apk add install figlet htop lm_sensors htop vim dmidecode docker git lf fzf bat curl
    clear
    echo -e "\e[1;32mUpdating Flatpak...\e[0m"
# Install lazydocker from Github
    echo -e "\e[1;32mPress 'q' to continue installation after you see lazydocker screen\e[0m"
    sleep 3
    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
    clear
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
      chmod 755 msfinstall && \
      ./msfinstall
    ~/home/Documents/Projects/Command-center
    ./command-center.sh
else
    echo "\e[1;31mYour System is no supported...\e[0m"
    sleep 2
    ./command-center.sh
fi
