#!/bin/sh

xdg-open $((fd -a '' .config .local/bin; fd -a 'config.*\.h' ~/.compiled/suckless) | fzf)
