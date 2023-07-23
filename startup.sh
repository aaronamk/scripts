#!/bin/sh
# Author: aaronamk

pkill kanshi
setsid kanshi &


# start clipboard daemon
#clipmenud &

# autostart programs
dex -a -s $XDG_CONFIG_HOME/autostart

# set audio levels
pactl set-card-profile alsa_card.pci-0000_0b_00.4.3 output:analog-stereo+input:analog-stereo
pactl set-sink-volume @DEFAULT_SINK@ 50%
pactl set-source-volume @DEFAULT_SOURCE@ 75%

# mount google drives
setsid rclone mount --daemon wm-drive: ~/wm-drive \
  --drive-chunk-size=128M \
  --transfers=16 &
setsid rclone mount --daemon jra-drive: ~/jra-drive \
  --drive-chunk-size=128M \
  --transfers=16 &
