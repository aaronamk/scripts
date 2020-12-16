#!/bin/sh
# Author: aaronamk

mv $XDG_PICTURES_DIR/screenshot_tmp.png $XDG_PICTURES_DIR/$(printf | fzf --no-info --prompt="Name: " --print-query --query="$(date +'%m-%d-%y_%I:%M:%S_%P')").png
