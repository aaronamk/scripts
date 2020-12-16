#!/bin/sh
# Author: aaronamk

# set up cache file
cache="$XDG_CACHE_HOME/media-control"
touch $cache
controller=$(cat $cache)
[ -z $controller ] && echo "mpd" > $cache

# convert to playerctl command
pctl_convert() {
	case $1 in
		"toggle") playerctl play-pause;;
		"next") playerctl next;;
		"prev") playerctl previous;;
	esac
}

if [ $(playerctl status) = "Playing" ]; then
	case $1 in
		"toggle_controller")
			[ $controller = "mpd" ] && echo "playerctl" > $cache
			[ $controller = "playerctl" ] && echo "mpd" > $cache
			exit 0
			;;
		"control_mpd")
			echo "mpd" > $cache
			exit 0
			;;
		"control_playerctl")
			echo "playerctl" > $cache
			exit 0
			;;
		"toggle")
			if [ $(playerctl status) = "Playing" ]; then
				playerctl pause
				echo "playerctl" > $cache
				exit 0
			fi
			if [ -n "$(mpc current)" ]; then
				mpc pause
				echo "mpd" > $cache
				exit 0
			fi
			if [ $controller="mpd" ]; then
				mpc play
				exit 0
			fi
			if [ $controller="playerctl" ]; then
				mpc play
				exit 0
			fi
			;;
	esac
fi
