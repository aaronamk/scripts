#!/bin/sh
# Author: aaronamk

# remap keyboards
sudo udevmon -c $XDG_CONFIG_HOME/udevmon/config.yaml &

# start music daemon
mpd &
mpDris2 & # add support for MPRIS
#mpc consume on

# set audio levels
pactl set-sink-volume @DEFAULT_SINK@ 50%
pactl set-source-volume @DEFAULT_SOURCE@ 40%

# set output to HDMI audio
#pactl set-card-profile alsa_card.pci-0000_00_1f.3 output:hdmi-stereo+input:analog-stereo
