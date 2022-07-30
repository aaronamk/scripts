#!/bin/sh
# Author: aaronamk

# start hotkey daemon
setsid hkd &
setsid sudo hk-relay -d /dev/input/by-id/usb-SEMITEK_USB-HID_Gaming_Keyboard_SN0000000001-event-kbd,/dev/input/by-id/usb-SEMITEK_USB-HID_Gaming_Keyboard_SN0000000001-if02-event-mouse &

# start ssh agent
eval "$(ssh-agent)"

# autostart programs
dex -a -s $XDG_CONFIG_HOME/autostart

# set audio levels
pactl set-card-profile alsa_card.pci-0000_0b_00.4 output:analog-stereo+input:analog-stereo
pactl set-sink-volume @DEFAULT_SINK@ 60%
pactl set-source-volume @DEFAULT_SOURCE@ 75%

# mount google drives
setsid rclone mount --daemon wm-drive: ~/wm-drive \
  --drive-chunk-size=128M \
  --transfers=16 &
setsid rclone mount --daemon jra-drive: ~/jra-drive \
  --drive-chunk-size=128M \
  --transfers=16 &
