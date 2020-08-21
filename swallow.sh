#!/bin/sh

$("$@") > /dev/null 2>&1 &
sleep .3
bspc node -s last.local
bspc node -f last.local
id=$(xdo id)
xdo hide
wait
xdo show "$id"
