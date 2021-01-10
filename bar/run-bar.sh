#!/bin/sh
# Author: aaronamk


bat0_block() {
	printf "/sys/class/power_supply/BAT0/capacity" | entr sed -i "$1c\\ $(battery.sh -b 0)" $XDG_CACHE_HOME/bar_blocks
#echo /sys/class/power_supply/BAT0/capacity | entr -s 'bat0'
}


bat1_block() {
	printf "/sys/class/power_supply/BAT1/capacity" | entr sed -i "$1c\\ $(battery.sh -b 1)" $XDG_CACHE_HOME/bar_blocks
}


mem_block() {
	while :; do
		sed -i "$1c\\$(memory.sh)" $XDG_CACHE_HOME/bar_blocks &
		sleep 10
	done
}


date_block() {
	while :; do
		date=$(date "+$DATE_FMT")
		sed -i "$1c\\$date" $XDG_CACHE_HOME/bar_blocks &
		sleep 1
	done
}


run_bar() {
	printf ".cache/bar_blocks" | entr update-bar.sh
}


bat0_block 1 &
bat1_block 2 &
mem_block 3 &
date_block 4 &
run_bar
