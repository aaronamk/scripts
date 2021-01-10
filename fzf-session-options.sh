#!/bin/sh
# Author: aaronamk

options="cancel\nLock\nSuspend\nLogout\nShut Down\nReboot"
selection=$(echo -e "$options" | fzf --prompt "Session: " | tr '[:upper:]' '[:lower:]')

case $selection in
	"cancel")
		exit 1
		;;
	"lock")
		i3lock -n -u -c 1c69b1 -i $XDG_PICTURES_DIR/backgrounds/blue_screen.png
		;;
	"suspend")
		systemctl suspend
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
