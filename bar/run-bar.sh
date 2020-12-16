#!/bin/sh
# Author: aaronamk

bat0_block() {
	echo /sys/class/power_supply/BAT0/capacity | \
		entr xsetroot -name "$(battery.sh -b 0)"
#echo /sys/class/power_supply/BAT0/capacity | entr -s 'bat0'
}

bat1_block() {
	echo /sys/class/power_supply/BAT1/capacity | \
		entr xsetroot -name "$(battery.sh -b 1)"
}

mem_block() {
	while :; do
		sed -i "$1c\\$(memory.sh)" $XDG_CACHE_HOME/bar_blocks &
		sleep 10
	done
}

date_block() {
	while :; do
		sed -i "$1c\\$(date +$DATE_FMT)" $XDG_CACHE_HOME/bar_blocks &
		sleep 1
	done
}

run_bar() {
	printf ".cache/bar_blocks" | entr update-bar.sh
}

mem_block 1 &
date_block 2 &
run_bar
