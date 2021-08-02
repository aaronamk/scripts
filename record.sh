#!/bin/sh
# Author: aaronamk
# record microphone and desktop audio

ffmpeg -f pulse -ss 2 -i 0 -f pulse -i 1 -filter_complex amerge=inputs=2 $HOME/Pictures/recording_$(date +'%m-%d-%y_%I:%M:%S_%P').mp3
