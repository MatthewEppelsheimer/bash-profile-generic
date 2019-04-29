#
### VARIABLES
#

red=$(tput setaf 1)
reset=$(tput sgr0)


#
### BEGIN SHORTCUTS ###
#

# Git shortcuts
alias g="git"

alias branch="git branch"
alias checkout="git checkout"
alias commit="git commit"
alias diff="git diff"
alias fetch="git fetch"
alias merge="git merge"
alias pull="git pull"
alias push="git push"

alias add="git add -i"
alias sync="git pull && git push"

alias fixup="git stash && git rebase -i HEAD~2"

# `track some/branch` becomes `git checkout --track origin/some/branch`
function track {
        if ! [ -z "$1" ];
        then
                git checkout --track origin/$1
        else
                echo "No argument provided."
        fi
}

## A stupid joke that should not be allowed to die
alias wow="git status"
alias such="git"
alias very="git"

# ls defaults
alias ls="ls -1ApG"
alias ll="ls -lh"

# Modify this bash_profile
alias bashconfig="vim ~/.bash_profile && source ~/.bash_profile"

# Docker-compose ops
alias dockc="docker-compose"
alias cacheflush="docker-compose restart memcached"

#
### END SHORTCUTS ###
#

#
### ADD TOOLS ###
#

# Git completion, made aware of our `g` alias
source ~/.git-completion.bash
__git_complete g __git_main

#
### CUSTOM OUTPUT
#

# Add git-radar heads-up display to path
# https://github.com/michaeldfallen/git-radar
export PATH=$PATH:$HOME/.git-radar

# == Command Prompt Beautification == #
# Inspired by http://beckism.com/2009/02/better_bash_prompt/
# Useful info also at:
#  * http://mywiki.wooledge.org/BashFAQ/037
#  * http://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
#  * http://www.ibm.com/developerworks/linux/library/l-tip-prompt/
# @TODO understand how this works in depth
PS1='\n${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \n $(git-radar --bash) \n \[$red\]=>\[$reset\] '

