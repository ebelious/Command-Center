#!/bin/bash
#       _          _ _
#   ___| |__   ___| (_) ___  _   _ ___
#  / _ \ '_ \ / _ \ | |/ _ \| | | / __|
# |  __/ |_) |  __/ | | (_) | |_| \__ \
#  \___|_.__/ \___|_|_|\___/ \__,_|___/
#
# https://github.com/ebelious/Command-Center
#
# Security - recon-ng
#

clear
cd ~/$USER/Command-Center/recon-ng
sudo docker run --rm -it -p 5000:5000 -v $(pwd):/recon-ng -v ~/.recon-ng:/root/.recon-ng --entrypoint "./recon-ng" recon-ng
~/Command-Center/security_scripts/security.sh
exit 0
