#!/bin/sh

locations=$(fd -a '' .config .local/bin; fd -a 'config.*\.h' ~/.local/compiled)

echo "$locations" | fzf --prompt "Configure: " | xargs -r $EDITOR
