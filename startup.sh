#!/bin/sh
# Author: aaronamk

# start hotkey daemon
setsid hkd &
setsid sudo hk-relay -d /dev/input/by-id/usb-SEMITEK_USB-HID_Gaming_Keyboard_SN0000000001-event-kbd,/dev/input/by-id/usb-SEMITEK_USB-HID_Gaming_Keyboard_SN0000000001-if02-event-mouse &

# start ssh agent
eval "$(ssh-agent)"

# start authentication agent (polkit)
setsid /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# start music daemon
setsid mpd &
setsid mpDris2 & # add support for MPRIS
#mpc consume on

# set audio levels
pactl set-card-profile alsa_card.pci-0000_00_1f.3 output:analog-stereo+input:analog-stereo
pactl set-sink-volume @DEFAULT_SINK@ 45%
pactl set-source-volume @DEFAULT_SOURCE@ 25%
setsid easyeffects --gapplication-service &

# set bg
setsid flashfocus &

# mount google drives
setsid rclone mount --daemon wm-drive: ~/wm-drive \
  --drive-chunk-size=128M \
  --transfers=16 &
setsid rclone mount --daemon jra-drive: ~/jra-drive \
  --drive-chunk-size=128M \
  --transfers=16 &
