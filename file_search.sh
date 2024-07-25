#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Search for file in the file system
#
clear
cd ~/
vim $(fzf -i -x --ansi --border rounded --preview='bat -f {}')
cd ~/Command-Center/
~/Command-Center/command-center.sh
exit 0
