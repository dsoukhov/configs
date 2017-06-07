# .bashrc

# If not running interactively, don't do anything
if [ -z "$PS1" ]; then
    alias eapsettings="cp ~/.m2/eap-settings.xml ~/.m2/settings.xml"
    alias nosettings="rm ~/.m2/settings.xml"
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
alias eapsettings="cp ~/.m2/eap-settings.xml ~/.m2/settings.xml"
alias bxmssettings="cp ~/.m2/bxms-settings.xml ~/.m2/settings.xml"
alias dvsettings="cp ~/.m2/dv-settings.xml ~/.m2/settings.xml"
alias mvear="cp /home/dsoukhov/Documents/pnc/ear-package/target/ear-package.ear ~/Documents/jboss-eap-6.4/standalone/deployments/"
alias nosettings="rm ~/.m2/settings.xml"
alias eapintern="vim ~/.config/xchat2/xchatlogs/RH-#eapintern.log"
alias eapto="vim ~/.config/xchat2/xchatlogs/RH-#eapto.log"
alias projetncl="vim ~/.config/xchat2/xchatlogs/RH-#projectncl.log"
alias soancl="vim ~/.config/xchat2/xchatlogs/RH-#soancl.log"
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
alias be="buildall dirty -DskipTests ice"
alias git-ignore-ws="git diff -U0 -w --no-color | git apply --cached --ignore-whitespace --unidiff-zero -"
alias sudo='sudo '
alias vimgo='vimx -u ~/.vimrc.go'

# Show branch of current repository
source /usr/share/git-core/contrib/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM=true
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
export OSHINKO_WEB_DEBUG=true
export OSHINKO_CLI_LOCATION=~/workspace/oshinko-cli/_output/oshinko-cli
export OPENSHIFT_NODEJS_PORT=4200
export OSHINKO_SA_TOKEN=QtPCIIgF4biV5WbJxwI6rxA5luu_h23LG77bGLbIOK4

export PYTHONPATH=${PYTHONPATH}:/usr/lib/python/:$HOME/Documents/pnc-cli
export GOPATH=$HOME/go
PATH=$(echo "$PATH" | awk -v RS=':' -v ORS=":" '!a[$1]++')
PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/.bin/:$HOME/scripts/:$JAVA_HOME:/usr/local/go/bin:$HOME/go/src/github.com/openshift/origin/_output/local/bin/linux/amd64:$GOPATH/bin
export PATH
