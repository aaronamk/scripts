#!/bin/sh

while read line; do
	[ -n "$line" ] && string="$string ┃ $line"
done < $XDG_CACHE_HOME/bar_blocks

xsetroot -name "${string:2}"
