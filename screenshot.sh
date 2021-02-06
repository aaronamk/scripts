#!/bin/sh
# Author: aaronamk

pkill xbanish
import $XDG_PICTURES_DIR/screenshot_tmp.png
xbanish &
$TERMINAL -g 50x2 -t "name_screenshot" -e name-screenshot.sh
