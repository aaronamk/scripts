#!/bin/sh
# Author: aaronamk

pkill xbanish
import $XDG_PICTURES_DIR/screenshot_tmp.png
xbanish &
#$TERMINAL -g 50x2 -n "name_screenshot" -e name-screenshot.sh # st
$TERMINAL -c 50 -r 2 -t "name_screenshot" -e name-screenshot.sh
