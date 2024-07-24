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
#
# Fedora / Redhat
if [[ $OS = Fedora ]] || [[ $OS = RedHat ]]
then
    sudo dnf copr enable pennbauman/ports # for lf terminal file manager
    sudo dnf install figlet htop lm_sensors htop vim dmidecode docker git grc lf fzf bat curl hashid john hashcat nmap wget apropos cargo lsd python2.7
    clear
# Adding comment to bash and zsh for added aliases
    echo "# These are the Command-Center aliases" >> $HOME/.bashrc
    echo "# These are the Command-Center aliases" >> $HOME/.zshrc
# Getting lazy docker git repo
    echo -e "\e[1;32mInstalling lazydocker...\e[0m"
    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
    clear
# Getting metasploit
    echo -e "\e[1;32mInstalling metasploit...\e[0m"
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
    chmod 755 msfinstall && \
    ./msfinstall
    clear
# Getting sqlmap
    echo -e "\e[1;32mInstalling sqlmap...\e[0m"
    git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
    echo "alias sqlmap='python ~/Command-Center/sqlmap-dev/sqlmap.py' " >> $HOME/.bashrc
    echo "alias sqlmap='python ~/Command-Center/sqlmap-dev/sqlmap.py' " >> $HOME/.zshrc
    clear
# Getting recon-ng
    echo -e "\e[1;32mInstalling recon-ng...\e[0m"
    git clone https://github.com/lanmaster53/recon-ng.git
    cd recon-ng
    sudo docker build --rm -t recon-ng .
    echo "alias ccenter='~/Command-Center/command-center.sh'" >> $HOME/.bashrc
    echo "alias ccenter='~/Command-Center/command-center.sh'" >> $HOME/.zshrc
    clear
# Installing Seclists
    echo -e "\e[1;32mInstalling seclists...\e[0m"
    cd ~/Command-Center/security_scripts/
    git clone https://github.com/danielmiessler/SecLists.git
    clear
# Installing Zellij
    cd ~/CommandCenter/
    wget https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz
    cp zellij ~/.local/bin/
    clear
# Installing Ttype
    echo -e "\e[1;32mInstalling ttyper...\e[0m"
    cd ~/Command-Center/
    cargo install ttyper
    echo "alias ttyper='$HOME/.cargo/bin/ttyper'" >> $HOME/.bashrc
    echo "alias ttyper='$HOME/.cargo/bin/ttyper'" >> $HOME/.zshrc
    clear
# Installing Responder
    git clone https://github.com/SpiderLabs/Responder.git
    echo "alias responder='python2.7 ~/Command-Center/Responder/Responder.py'" >> $HOME/.bashrc
    echo "alias responder='python2.7 ~/Command-Center/Responder/Responder.py'" >> $HOME/.zshrc
# launching Command Center
    ~/Command-Center/command-center.sh

#
#Debian/Ubuntu
elif [[ $OS = PRETTY_Ubuntu ]] ||[[ $OS = PRETTY_Debian ]] || [[ $OS = Ubuntu ]] || [[ $OS = Debian ]]
then
    sudo apt install figlet htop lm-sensors htop vim grc dmidecode docker.io git lf fzf bat curl hashid hashcat john nmap
    clear
# Getting lazy docker git repo
    echo -e "\e[1;32mInstalling lazydocker...\e[0m"
    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
    clear
# Getting metasploit
    echo -e "\e[1;32mInstalling metasploit...\e[0m"
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
    chmod 755 msfinstall && \
    ./msfinstall
    clear
# Getting sqlmap
    echo -e "\e[1;32mInstalling sqlmap...\e[0m"
    git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
    echo "alias sqlmap='python ~/Command-Center/sqlmap-dev/sqlmap.py' "
    clear
# Getting recon-ng
    git clone https://github.com/lanmaster53/recon-ng.git
    cd recon-ng
    sudo docker build --rm -t recon-ng .
    echo "alias ccenter='~/Command-Center/command-center.sh'" >> ~/.bashrc
    echo "alias ccenter='~/Command-Center/command-center.sh'" >> ~/.zshrc
    ~/Command-Center/command-center.sh
#
#
# Arch
elif [[ $OS = Arch ]] || [[ $OS = Manjaro ]]
then
    sudo pcaman -S install figlet htop lm_sensors grc htop vim dmidecode docker git lf fzf bat curl hashid hashcat john nmap
    clear
# Getting lazy docker git repo
    echo -e "\e[1;32mInstalling lazydocker...\e[0m"
    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
    clear
# Getting metasploit
    echo -e "\e[1;32mInstalling metasploit...\e[0m"
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
    chmod 755 msfinstall && \
    ./msfinstall
    clear
# Getting sqlmap
    echo -e "\e[1;32mInstalling sqlmap...\e[0m"
    git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
    echo "alias sqlmap='python ~/Command-Center/sqlmap-dev/sqlmap.py' "
    clear
# Getting recon-ng
    git clone https://github.com/lanmaster53/recon-ng.git
    cd recon-ng
    sudo docker build --rm -t recon-ng .
    echo "alias ccenter='~/Command-Center/command-center.sh'" >> ~/.bashrc
    echo "alias ccenter='~/Command-Center/command-center.sh'" >> ~/.zshrc
    ~/Command-Center/command-center.sh
#
#
# Open Suse
elif [[ $OPTION = OpenSUSE ]]
then
    sudo zypper install install figlet htop grc lm_sensors htop vim dmidecode docker git lf fzf bat curl nmap
    clear
# Getting lazy docker git repo
    echo -e "\e[1;32mInstalling lazydocker...\e[0m"
    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
    clear
# Getting metasploit
    echo -e "\e[1;32mInstalling metasploit...\e[0m"
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
    chmod 755 msfinstall && \
    ./msfinstall
    clear
# Getting sqlmap
    echo -e "\e[1;32mInstalling sqlmap...\e[0m"
    git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
    echo "alias sqlmap='python ~/Command-Center/sqlmap-dev/sqlmap.py' "
    clear
# Getting recon-ng
    git clone https://github.com/lanmaster53/recon-ng.git
    cd recon-ng
    sudo docker build --rm -t recon-ng .
    echo "alias ccenter='~/Command-Center/command-center.sh'" >> ~/.bashrc
    echo "alias ccenter='~/Command-Center/command-center.sh'" >> ~/.zshrc
    ~/Command-Center/command-center.sh
#
#
# Alpine
elif [[ $OPION = Alpine ]]
then
    doas apk add install figlet htop lm_sensors htop vim dmidecode docker git lf fzf bat curl nmap grc john hashid hashcat
    clear
# Getting lazy docker git repo
    echo -e "\e[1;32mInstalling lazydocker...\e[0m"
    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
    clear
# Getting metasploit
    echo -e "\e[1;32mInstalling metasploit...\e[0m"
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
    chmod 755 msfinstall && \
    ./msfinstall
    clear
# Getting sqlmap
    echo -e "\e[1;32mInstalling sqlmap...\e[0m"
    git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
    echo "alias sqlmap='python ~/Command-Center/sqlmap-dev/sqlmap.py' "
    clear
# Getting recon-ng
    git clone https://github.com/lanmaster53/recon-ng.git
    cd recon-ng
    sudo docker build --rm -t recon-ng .
    echo "alias ccenter='~/Command-Center/command-center.sh'" >> ~/.bashrc
    echo "alias ccenter='~/Command-Center/command-center.sh'" >> ~/.zshrc
    ~/Command-Center/command-center.sh
#

else
    echo "\e[1;31mYour System is no supported...\e[0m"
    sleep 2
    exit 1
fi
