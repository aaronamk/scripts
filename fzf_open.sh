#!/bin/sh

xdg-open $((fd -a '' $XDG_DESKTOP_DIR $XDG_DOWNLOADS_DIR $XDG_PICTURES_DIR) | fzf)
