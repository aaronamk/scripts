#!/bin/sh
pkill xbanish
import $XDG_PICTURES_DIR/screenshot_tmp.png
xbanish &
name=$($TERMINAL -n "save" -o - -e fzf -q $(date +'%m-%d-%y_%I:%M:%S_%P'.png))
echo $name
