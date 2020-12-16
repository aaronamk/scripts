#!/bin/sh
# Author: aaronamk

# reload displays
autorandr -c

# start hotkey daemon
pkill sxhkd
sxhkd &

# set keyrepeat
xset r rate 300 35 &

# load Xresources
xrdb -load $XDG_CONFIG_HOME/Xresources &

# remap keyboard
#xmodmap /home/ak/.config/Xmodmap/config &
#pkill xcape
#xcape -e 'Control_L=Escape;Hyper_R=Tab' &

# hide cursor when typing
pkill xbanish
xbanish &

# restart bar
#pkill entr
#run-bar.sh &
