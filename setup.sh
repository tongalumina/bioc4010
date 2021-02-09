#!/bin/bash
## Script to do post-installation update for BIOC-4010 on WLS2 Ubuntu
## Fix a few glitches not resolved in the VM distribtion
## Use of Admin/root account is not recommended

sed -i -e "s/xterm-color/xterm-256color/" ~/.bashrc
echo "alias grep='grep -E --color=auto'" >> ~/.bashrc
conda config --set changeps1 false
sudo apt-get --assume-yes install tree
