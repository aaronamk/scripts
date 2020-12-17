#!/bin/sh
# Author: aaronamk

locations=$(fd -a '' $XDG_DESKTOP_DIR $XDG_DOWNLOAD_DIR $XDG_PICTURES_DIR)

omni-open.sh "$(echo "$locations" | fzf --prompt "Open: ")"
