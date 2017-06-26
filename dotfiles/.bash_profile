# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#auto startx on login
if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
      exec startx
fi
