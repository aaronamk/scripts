#!/bin/sh
# Author: aaronamk

# reload displays
autorandr -c

# start hotkey daemon
# pkill sxhkd
# sxhkd &

# load Xresources
xrdb -load $XDG_CONFIG_HOME/Xresources &

#set background
hsetroot -solid '#000000'

# compositor
pkill picom
picom &

# hide cursor when typing
pkill xbanish
xbanish &

# set keyrepeat
xset r rate 300 35
xset s off -dpms

# restart bar
# pkill entr
# pkill run-bar.sh
# run-bar.sh &
