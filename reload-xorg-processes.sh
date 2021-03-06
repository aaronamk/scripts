#!/bin/sh
# Author: aaronamk

# reload displays
autorandr -c

# start hotkey daemon
pkill sxhkd
sxhkd &

# set keyrepeat
xset r rate 300 35 &
xset s off -dpms &

# load Xresources
xrdb -load $XDG_CONFIG_HOME/Xresources &

# compositor
pkill picom
picom &

# hide cursor when typing
pkill xbanish
xbanish &

# restart bar
pkill entr
pkill run-bar.sh
run-bar.sh &
