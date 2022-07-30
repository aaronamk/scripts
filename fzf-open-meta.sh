#!/bin/sh
# Author: aaronamk

locations=$(fd -a '' $XDG_CONFIG_HOME $BIN; fd -a 'config.*\.h' $COMPILED)

omni-open.sh "$(echo "$locations" | fzf --prompt "Configure: ")"
