# Command Center

This is a collection of bash scripts that consolidate some administrative tasks with a simple interface. <br />
** Note This is still a work in progress

![cc](https://github.com/ebelious/Command-Center/blob/main/Screenshot%20from%202024-07-25%2016-27-31.png)

## Usage
Just use `ccenter`(alias) and easily navigate using numbers and letters that are listed next to the options. This uses `vim` and `less`, there are basic instructions below. If you do not have nerd-fonts as a terminal font, some icons will not show up.


### vim

- `i` - used to go into input mode, which allowd you to input text
- `esc` - exits input mode
- `:q` - when in normal mode you use this to quit without saving
- `:wq!` - write and quit (saves changes)
Use the arrow keys to navigte or:
- `h` - left
- `l` - right
- `k` - up
- `j` - down

### less

This is a pager that allows searching and other functionality
| Command | Action |
|--------|--------|
| Down arrow, Enter, e, or j	| Move forward one line. |
| Up arrow,y or k	| Move backward one line. |
| Space bar or f | Move Forward one page. |
| b	| Move Backward one page. |
| /pattern | Search forward for matching patterns. |
| ?pattern | Search backward for matching patterns. |
| n	| Repeat previous search. |
| N	| Repeat previous search in reverse direction. |
| g	| Go to the first line in the file. |
| Ng | Go to the N-th line in the file. |
| G |	Go to the last line in the file. |
| p	| Go to the beginning of fthe ile. |
| Np |	Go to N percent into file. |
| h |	Display help. |
| q |	Exit less. |

## Prereqs:

These will need to be installaed in order for this to function properly

```
cd Command-Center
```
```
chmod +x install.sh
```
```
./install.sh
```


### Manual Install

Install through package manager
*Note: Fedora needs to add copr repo for lf*
```
sudo dnf copr enable pennbauman/ports
```

### Fedora
```
sudo dnf install figlet htop lm_sensors htop vim dmidecode docker git grc lf fzf bat curl npm hashid john hashcat nmap wget cargo lsd python2.7 sipcalc shippy go
```

Added alias options for both bash and zsh
```
# Adding comment to bash and zsh for added aliases
    cd ~/Command-Center/
    echo "# These are the Command-Center aliases" >> $HOME/.bashrc
    echo "# These are the Command-Center aliases" >> $HOME/.zshrc
# Getting lazy docker git repo
    echo -e "\e[1;32mInstalling lazydocker...\e[0m"
    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
    sleep 3
    clear
# Getting metasploit
    echo -e "\e[1;32mInstalling metasploit...\e[0m"
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
    chmod 755 msfinstall && \
    ./msfinstall
    sleep 3
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
    git clone https://github.com/danielmiessler/SecLists.git
    clear
# Installing Zellij
    echo -e "\e[1;32mInstalling zellij...\e[0m"
    cd ~/Command-Center/
    wget https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz
    tar -xf zellij-x86_64-unknown-linux-musl.tar.gz
    cp zellij ~/.local/bin/
    clear
    # Install Virust Total CLI
    clear
    echo -e "\e[1;32mInstalling virustotal-cli...\e[0m"
    git clone https://github.com/VirusTotal/vt-cli.git
    cd vt-cli
    make install
    export GOBIN=`go env GOPATH`/bin
    export PATH=$PATH:$GOBIN
    clear
    vt init
    clear
# Install oui lookup
    cd ~/Command-Center/
    echo -e "\e[1;32mInstalling npm oui...\e[0m"
    sudo npm i -g oui
    clear
    # Installing Responder
    echo -e "\e[1;32mInstalling responder...\e[0m"
    git clone https://github.com/SpiderLabs/Responder.git
    echo "alias responder='python2.7 ~/Command-Center/Responder/Responder.py'" >> $HOME/.bashrc
    echo "alias responder='python2.7 ~/Command-Center/Responder/Responder.py'" >> $HOME/.zshrc
    clear
# Installing Ttype
    echo -e "\e[1;32mInstalling ttyper...\e[0m"
    cd ~/Command-Center/
    cargo install ttyper
    echo "alias ttyper='$HOME/.cargo/bin/ttyper'" >> $HOME/.bashrc
    echo "alias ttyper='$HOME/.cargo/bin/ttyper'" >> $HOME/.zshrc
    $SHELL
    clear
```
    
