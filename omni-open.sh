#!/bin/sh
# Author: aaronamk
# simpler, easier, and faster than xdg-open

[ "$1" ] || exit # exit if no file provided

ext=$(printf "$1" | rev | cut -d "." -f 1 | rev | tr '[:upper:]' '[:lower:]')
case "$ext" in
  "raw")  setsid nohup imv         "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "png")  setsid nohup imv         "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "jpg")  setsid nohup imv         "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "jpeg") setsid nohup imv         "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "gif")  setsid nohup imv         "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "bmp")  setsid nohup imv         "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "tiff") setsid nohup imv         "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "wav")  mpv                      "$1"   ;;
  "flac") mpv                      "$1"   ;;
  "opus") mpv                      "$1"   ;;
  "ogg")  mpv                      "$1"   ;;
  "mp3")  mpv                      "$1"   ;;
  "m4a")  mpv                      "$1"   ;;
  "mp4")  setsid nohup mpv         "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "avi")  setsid nohup mpv         "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "mov")  setsid nohup mpv         "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "flv")  setsid nohup mpv         "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "mkv")  setsid nohup mpv         "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "wmv")  setsid nohup mpv         "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "webm") setsid nohup mpv         "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "pdf")  setsid nohup zathura     "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "odt")  setsid nohup libreoffice "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "ods")  setsid nohup libreoffice "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "odp")  setsid nohup libreoffice "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "docx") setsid nohup libreoffice "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "html") setsid nohup "$BROWSER"  "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "gz")   setsid nohup file-roller "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "tar")  setsid nohup file-roller "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "zip")  setsid nohup file-roller "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "gzip") setsid nohup file-roller "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "7z")   setsid nohup file-roller "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  "rar")  setsid nohup file-roller "$1" >/dev/null 2>&1 & sleep 0.1 ;;
  *)      [ "$(file -b $1)" = "directory" ] && "$FILE" "$1" || "$EDITOR" "$1" ;;
esac
