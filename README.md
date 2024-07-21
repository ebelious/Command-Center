# Command Center

This is a collection of bash scripts that consolidate some administrative tasks with a simple interface. <br />
** Note This is still a work in progress

![cc](https://github.com/ebelious/Command-Center/blob/main/Screenshot%20from%202024-07-21%2014-20-49.png)

## Usage
Just launch `command-center.sh` and easily navigate using numbers and letters that are listed next to the options. This uses `vim` and `less`, there are basic instructions below.


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

```
git clone https://github.com/jesseduffield/lazydocker.git
```
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

```
figlet htop lm_sensors vim dmidecode docker lf nmcli
```

Curl lazy docker binary
```
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
```

