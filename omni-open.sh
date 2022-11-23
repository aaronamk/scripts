#!/bin/sh
# Author: aaronamk
# simpler, easier, and faster than xdg-open

[ "$1" ] || exit # exit if no file provided

ext=$(printf "$1" | rev | cut -d "." -f 1 | rev | tr '[:upper:]' '[:lower:]')
case "$ext" in
  "raw")  setsid imv         "$1" ;;
  "png")  setsid imv         "$1" ;;
  "jpg")  setsid imv         "$1" ;;
  "jpeg") setsid imv         "$1" ;;
  "gif")  setsid imv         "$1" ;;
  "bmp")  setsid imv         "$1" ;;
  "tiff") setsid imv         "$1" ;;
  "wav")  mpv                "$1" ;;
  "flac") mpv                "$1" ;;
  "opus") mpv                "$1" ;;
  "ogg")  mpv                "$1" ;;
  "mp3")  mpv                "$1" ;;
  "m4a")  mpv                "$1" ;;
  "mp4")  setsid mpv         "$1" ;;
  "avi")  setsid mpv         "$1" ;;
  "mov")  setsid mpv         "$1" ;;
  "flv")  setsid mpv         "$1" ;;
  "mkv")  setsid mpv         "$1" ;;
  "wmv")  setsid mpv         "$1" ;;
  "webm") setsid mpv         "$1" ;;
  "pdf")  setsid zathura     "$1" ;;
  "odt")  setsid libreoffice "$1" ;;
  "ods")  setsid libreoffice "$1" ;;
  "odp")  setsid libreoffice "$1" ;;
  "docx") setsid libreoffice "$1" ;;
  "html") setsid "$BROWSER"  "$1" ;;
  "gz")   setsid file-roller "$1" ;;
  "tar")  setsid file-roller "$1" ;;
  "zip")  setsid file-roller "$1" ;;
  "gzip") setsid file-roller "$1" ;;
  "7z")   setsid file-roller "$1" ;;
  "rar")  setsid file-roller "$1" ;;
  *)      [ "$(file -b $1)" = "directory" ] && "$FILE" "$1" || "$EDITOR" "$1" ;;
esac
