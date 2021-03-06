#!/bin/sh
# Author: aaronamk
# Display pulseaudio information

input=""
[ "$(pamixer --default-source --get-mute)" = "true" ] && input=""

vol=$(pamixer --get-volume)
output=""
[ -z $(pamixer --list-sinks | grep HDMI) ] || output=""
[ "$(pamixer --get-mute)" = "true" ] && vol="x"

printf "$input $output $vol\n"
