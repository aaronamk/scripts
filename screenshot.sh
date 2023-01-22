#!/bin/sh
# Author: aaronamk

grim -g "$(slurp)" "$XDG_PICTURES_DIR/screenshot_tmp.png"
$TERMINAL -T name_screenshot -e name-screenshot.sh
