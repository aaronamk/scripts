#!/bin/sh
# Author: aaronamk
NAME=$(printf | fzf --no-info --prompt="Name: " --print-query --query="$(date +'%y-%m-%d_%I:%M:%S_%P')")

[ -z $NAME ] && exit

mv "$XDG_PICTURES_DIR/screenshot_tmp.png" "$XDG_PICTURES_DIR/$NAME.png"
