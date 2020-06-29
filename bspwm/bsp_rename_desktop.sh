#!/bin/sh

name=$("" | fzf --print-query --prompt "Name: ")

[ -n "$name" ] && $(bspc desktop -n "$name")
