#!/bin/sh

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
xmodmap /home/ak/.config/Xmodmap/config &
pkill xcape
xcape -e 'Control_L=Escape;Hyper_R=Tab' &

# hide cursor when typing
pkill xbanish
xbanish &

# set output to HDMI audio
#pactl set-card-profile alsa_card.pci-0000_00_1f.3 output:hdmi-stereo+input:analog-stereo
