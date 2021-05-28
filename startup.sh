#!/bin/sh
# Author: aaronamk

# start ssh agent
eval "$(ssh-agent)"

# start authentication agent (polkit)
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# remap keyboards
#sudo udevmon -c $XDG_CONFIG_HOME/udevmon/config.yaml &

# start music daemon
mpd &
mpDris2 & # add support for MPRIS
#mpc consume on

# set audio levels
pactl set-card-profile alsa_card.pci-0000_00_1f.3 output:analog-stereo+input:analog-stereo
pactl set-sink-volume @DEFAULT_SINK@ 40%
pactl set-source-volume @DEFAULT_SOURCE@ 25%

# set bg
hsetroot -solid '#000000'

# set output to HDMI audio
#pactl set-card-profile alsa_card.pci-0000_00_1f.3 output:hdmi-stereo+input:analog-stereo
