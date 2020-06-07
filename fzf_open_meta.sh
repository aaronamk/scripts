#!/bin/sh

(fd -a '' .config .local/bin; fd -a 'config.*\.h' Compiled/suckless) | fzf | xargs -r $EDITOR
