#!/bin/sh

while [ true ]; do
	date "+%m/%d/%Y %I:%M:%S %P" > $XDG_CACHE_HOME/bar_blocks &
	sleep 1
done
