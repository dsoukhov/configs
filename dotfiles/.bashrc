# .bashrc

# If not running interactively, don't do anything
if [ -z "$PS1" ]; then
    return
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi

# Set the window title of X terminals to pwd
PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias downloads="cd ~/Downloads"
alias df="df -Tha --total"
alias du="du -ach | sort -h"
alias top="htop"
alias wget="wget -c"
alias mkdir="mkdir -p"
alias ps="ps auxf"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias cd..="cd .."
alias ..="cd .."
alias sl="ls"
alias lsl="ls -lhFA | less"
alias dirs="dirs -v"
alias ws="cd $HOME/workspace"
alias sudo='sudo '

# Show branch of current repository
source /usr/share/git/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM=true
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

export PYTHONPATH=${PYTHONPATH}:/usr/lib/python/
export GOPATH=$HOME/go
PATH=$(echo "$PATH" | awk -v RS=':' -v ORS=":" '!a[$1]++')
PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/.bin/:$HOME/scripts/:$JAVA_HOME:/usr/local/go/bin:$GOPATH/bin
export PATH
