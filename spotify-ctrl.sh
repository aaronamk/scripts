#!/bin/sh
# control Spotify via the Spotify hotkeys extension

xdotool search --sync "Mozilla Firefox" key --clearmodifiers alt+shift+$1
