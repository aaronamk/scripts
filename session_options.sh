#!/bin/sh

selection=$(echo -e "cancel\nLogout\nShut Down\nReboot" | fzf --prompt "Session: ")

case $selection in
	cancel)
		exit 1
		;;
	"Logout")
		$(pkill -9 -t $(ps $(pgrep Xorg) | grep tty | awk '{print $2}'))
		;;
	"Shut Down")
		$(shutdown now)
		;;
	"Reboot")
		$(systemctl reboot)
		;;
esac
