#!/bin/sh
# Author: aaronamk
# Usage: make_iso.sh path/to/iso /dev/drive

sudo dd bs=4M if=$1 of=$2 status=progress
