#!/bin/sh

selection=$(echo -e "cancel\nLogout\nShut Down\nReboot" | fzf --prompt "Session: " | tr '[:upper:]' '[:lower:]')

case $selection in
	"cancel")
		exit 1
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
