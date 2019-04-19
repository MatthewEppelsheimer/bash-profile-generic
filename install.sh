#!/usr/bin/env bash

# install git radar
# https://github.com/michaeldfallen/git-radar
$(cd ~ && git clone https://github.com/michaeldfallen/git-radar .git-radar)

# install git bash completion
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
ln -s $(pwd)/git-completion.bash ~/.git-completion.bash

