#!/bin/sh
# Author: aaronamk

cache_file="$XDG_CACHE_HOME/bar_blocks"

printf "\n\n\n" > $cache_file

mem_block() {
	while :; do
		sed -i "$1c\\$(memory.sh)" $cache_file &
		sleep 10
	done
}


audio_block() {
	sed -i "$1c\\$(audio.sh)" $cache_file
	pactl subscribe | stdbuf -oL grep -E '(sink|source)' | while read -r event; do
		sed -i "$1c\\$(audio.sh)" $cache_file
	done
}


date_block() {
	while :; do
		date=$(date "+$DATE_FMT")
		sed -i "$1c\\$date" $cache_file &
		sleep 1
	done
}


run_bar() {
	printf "$cache_file" | entr update-bar.sh
}


mem_block 1 &
audio_block 2 &
date_block 3 &
run_bar
