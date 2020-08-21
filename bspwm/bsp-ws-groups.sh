#!/bin/sh

store='$XDG_DATA_HOME/bsp_ws_groups/setup'

case "$1" in
	load)
		while read -r line; do
			bspc monitor -d $line #add monitor names to this
		done < $store
		;;
	save)
		;;
	*) echo "Invalid syntax" ;;
esac

