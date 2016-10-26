# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#set dual screen for login prompt 
xrandr --output HDMI1 --primary --auto --left-of VGA1

#auto startx on login
if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
      exec startx
fi
