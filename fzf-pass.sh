#!/bin/sh
# Author: aaronamk

password=$(fd '' $PASSWORD_STORE_DIR | sed 's/^.*password-store\///;s/\.gpg$//')

pass $( echo "$password" | fzf)
