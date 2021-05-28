#!/bin/sh
# Author: aaronamk

options="HDMI\nDP\nmDP"
selection=$(printf "$options" | fzf --prompt "Launch: ")

case $selection in
	"HDMI") sudo ddcutil --bus=5 setvcp 60 0x11 ;;
	"DP") sudo ddcutil --bus=5 setvcp 60 0x0f ;;
	"mDP") sudo ddcutil --bus=5 setvcp 60 0xDF ;;
esac
