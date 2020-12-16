#!/bin/sh
# Author: aaronamk
# requires v4l2loopback-dkms

ffmpeg -f v4l2 -i /dev/video0 -vf "transpose=3,format=yuv420p" -f v4l2 /dev/video2
