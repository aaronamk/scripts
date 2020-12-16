#!/bin/sh
# Author: aaronamk

locations=$(fd -a '' .config .local/bin; fd -a 'config.*\.h' $COMPILED)

echo "$locations" | fzf --prompt "Configure: " | xargs -r $EDITOR
