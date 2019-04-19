#!/usr/bin/env bash

# install git radar
# https://github.com/michaeldfallen/git-radar
$(cd ~ && git clone https://github.com/michaeldfallen/git-radar .git-radar)

# install git bash completion
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
ln -s $(pwd)/git-completion.bash ~/.git-completion.bash

# Symlink .bash_profile to home dir
temp=$(pwd)
ln -s $temp/.bash_profile ~/.bash_profile

# Source .bash_profile during new sessions
echo "source ~/.bash_profile" >> ~/.bashrc

