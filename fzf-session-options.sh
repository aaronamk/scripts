#!/bin/sh
# Author: aaronamk

options="Suspend\nKill\nLock\nLogout\nShut Down\nReboot"
selection=$(printf "$options" | fzf --prompt "Session: " | tr '[:upper:]' '[:lower:]')

case $selection in
	"suspend")
		systemctl suspend
		;;
	"kill")
		xkill
		;;
	"lock")
		i3lock -n -u -c 1c69b1 -i $XDG_PICTURES_DIR/backgrounds/blue_screen.png
		;;
	"logout")
		pkill -9 -t $(ps $(pgrep Xorg) | grep tty | awk '{print $2}')
		;;
	"shut down")
		shutdown now
		;;
	"reboot")
		systemctl reboot
		;;
esac
