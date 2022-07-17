#!/bin/sh
# Author: aaronamk
# Drive mounter/unmounter. Currently very barebones


block=$(lsblk -no HOTPLUG,KNAME,FSTYPE,SIZE,VENDOR,MODEL,PARTLABEL,MOUNTPOINT | grep '^[[:space:]]*1' | cut -b 9- | fzf)
[ "$block" = "" ] && exit

path="/dev/$(printf $block | cut -d ' ' -f 1)"

if [ -n "$1" ]; then
  udevil unmount $path
  exit
else
  vifm "$(udevil mount $path | rev | cut -d ' ' -f 1 | rev)"
fi
