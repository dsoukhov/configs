# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias eapsettings="cp ~/.m2/eap-settings.xml ~/.m2/settings.xml"
alias mvear="cp /home/dsoukhov/Documents/pnc/ear-package/target/ear-package.ear ~/Documents/jboss-eap-6.4/standalone/deployments/"
alias nosettings="rm ~/.m2/settings.xml"
alias eapintern="vim ~/.config/xchat2/xchatlogs/RH-#eapintern.log"
alias eapto="vim ~/.config/xchat2/xchatlogs/RH-#eapto.log"
alias projetncl="vim ~/.config/xchat2/xchatlogs/RH-#projectncl.log"
alias soancl="vim ~/.config/xchat2/xchatlogs/RH-#soancl.log"
alias ws="cd ~/workspace"
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

# Show branch of current repository
source /usr/share/git-core/contrib/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM=true
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/.bin/:$HOME/scripts/:
export PYTHONPATH=${PYTHONPATH}:/usr/lib/python/:$HOME/Documents/pnc-cli
PATH=$(echo "$PATH" | awk -v RS=':' -v ORS=":" '!a[$1]++')
export PATH