#!/bin/bash
## Script to do post-installation update for BIOC-4010 tutorial-1 on WLS2 Ubuntu
## Use of Admin account is not recommended
sed -i -e "s/xterm-color/xterm-256color/" ~/.bashrc
echo "alias grep='grep -E --color=auto'" >> ~/.bashrc
ln -s /mnt/c/Users/Admin/Downloads ~/bioinfo/tut1
conda config --set changeps1 false
sudo apt-get --assume-yes install tree
