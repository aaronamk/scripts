#!/bin/sh

locations=$(fd -a '' $XDG_DESKTOP_DIR $XDG_DOWNLOADS_DIR $XDG_PICTURES_DIR)

xdg-open $(echo "$locations" | fzf --prompt "Open: ")
