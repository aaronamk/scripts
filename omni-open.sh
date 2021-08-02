#!/bin/sh
# Author: aaronamk
# simpler, easier, and faster than xdg-open

ext=$(printf "$1" | rev | cut -d "." -f 1 | rev | tr '[:upper:]' '[:lower:]')
case "$ext" in
	"raw")  imv         "$1" ;;
	"png")  imv         "$1" ;;
	"jpg")  imv         "$1" ;;
	"jpeg") imv         "$1" ;;
	"gif")  imv         "$1" ;;
	"bmp")  imv         "$1" ;;
	"tiff") imv         "$1" ;;
	"wav")  mpv         "$1" ;;
	"flac") mpv         "$1" ;;
	"opus") mpv         "$1" ;;
	"ogg")  mpv         "$1" ;;
	"mp3")  mpv         "$1" ;;
	"m4a")  mpv         "$1" ;;
	"mp4")  mpv         "$1" ;;
	"avi")  mpv         "$1" ;;
	"mov")  mpv         "$1" ;;
	"flv")  mpv         "$1" ;;
	"mkv")  mpv         "$1" ;;
	"wmv")  mpv         "$1" ;;
	"webm") mpv         "$1" ;;
	"pdf")  zathura     "$1" ;;
	"html") firefox     "$1" ;;
	"gz")   file-roller "$1" ;;
	"tar")  file-roller "$1" ;;
	"zip")  file-roller "$1" ;;
	"gzip") file-roller "$1" ;;
	"7z")   file-roller "$1" ;;
	"rar")  file-roller "$1" ;;
	*)      [ "$(file -b $1)" = "directory" ] && vifm "$1" || nvim "$1" ;;
esac

#file_type=$(file -b "$1" | tr A-Z a-z)

#case "$file_type" in
#	*"image"*) imv "$1" ;;
#	*"audio"*) mpv "$1" ;;
#	*"video"*) mpv "$1" ;;
#	*"movie"*) mpv "$1" ;;
#	*"media"*) mpv "$1" ;;
#	*"pdf"*) zathura "$1" ;;
#	*"archive"*) file-roller "$1" ;;
#	*"compress"*) file-roller "$1" ;;
##	*"html"*) firefox "$1" ;;
#	"directory") vifm "$1" ;;
#	*) nvim "$1" ;;
#esac
