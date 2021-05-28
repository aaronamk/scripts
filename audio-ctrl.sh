#!/bin/sh
# Author: aaronamk
# Currently, just toggles between built-in and HDMI audio

card="0000_00_1f.3 output:analog-stereo+input:analog-stereo"
[ -z "$(pamixer --list-sinks | grep HDMI)" ] && card="0000_01_00.1 output:hdmi-stereo"

pactl set-card-profile alsa_card.pci-$card
