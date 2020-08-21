#!/bin/sh
pkill xbanish
import $XDG_PICTURES_DIR/screenshot_tmp.png
xbanish &
$TERMINAL -n "name_screenshot" -e name-screenshot.sh
