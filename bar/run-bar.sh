#!/bin/sh
# Author: aaronamk

printf "\n\n" > $XDG_CACHE_HOME/bar_blocks

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


mem_block 1 &
date_block 2 &
run_bar
