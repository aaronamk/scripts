#!/bin/sh

mv $XDG_PICTURES_DIR/screenshot_tmp.png $XDG_PICTURES_DIR/$(fzf --print-query -q $(date +'%m-%d-%y_%I:%M:%S_%P')).png
