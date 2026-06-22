#!/bin/sh
# Author: aaronamk
# Drive mounter/unmounter. Sorta barebones.

handle_termination() {
  udevil unmount "$path"
}

block=$(lsblk -no HOTPLUG,KNAME,FSTYPE,SIZE,VENDOR,MODEL,PARTLABEL,MOUNTPOINT | cut -b 3- | fzf)
[ -z "$block" ] && exit

path="/dev/$(printf $block | cut -d ' ' -f 1)"

trap "handle_termination" SIGTERM
trap "handle_termination" SIGHUP

$FILE "$(udevil mount "$path" | awk 'END{print $NF}')"
printf "Unmount $path? [Y/n] "
read unmount
[ "$unmount" = "" ] || [ "$unmount" = "y" ] || [ "$unmount" = "Y" ] && udevil unmount "$path"
