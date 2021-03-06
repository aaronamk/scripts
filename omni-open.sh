#!/bin/sh
# Author: aaronamk
# simpler, easier, and faster than xdg-open

file_type=$(file -b "$1" | tr A-Z a-z)

case "$file_type" in
	*"archive"*) file-roller "$1" ;;
	*"compress"*) file-roller "$1" ;;
	*"image"*) imv "$1" ;;
	*"audio"*) mpv "$1" ;;
	*"movie"*) mpv "$1" ;;
	*"media"*) mpv "$1" ;;
	*"pdf"*) zathura "$1" ;;
#	*"html"*) firefox "$1" ;;
	"directory") vifm "$1" ;;
	*) nvim "$1" ;;
esac
