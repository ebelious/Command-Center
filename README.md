# Command Center

This is a collection of bash scripts that consolidate some administrative tasks with a simple interface. <br />
** Note This is still a work in progress

![cc](https://github.com/ebelious/Command-Center/blob/main/Screenshot%20from%202024-07-22%2020-56-26.png)

## Usage
Just use `ccenter`(alias) and easily navigate using numbers and letters that are listed next to the options. This uses `vim` and `less`, there are basic instructions below.


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

```
figlet htop lm_sensors(lm-sensors) htop vim dmidecode docker git grc lf fzf bat curl hashid john hashcat nmap
```




Curl lazy docker binary
```
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
```
These will need to be installed <br />
[metasploit](https://docs.metasploit.com/docs/using-metasploit/getting-started/nightly-installers.html)
```
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall
```

sqlmap
```
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
echo "alias sqlmap='python ~/Command-Center/sqlmap' "
Getting recon-ng
```

Get recon-ng
```
git clone https://github.com/lanmaster53/recon-ng.git
cd recon-ng
sudo docker build --rm -t recon-ng .
```
    
[aircrack-ng](https://github.com/aircrack-ng/aircrack-ng)

