#!/bin/sh
# Author: aaronamk

youtube-dl -if bestaudio --extract-audio --yes-playlist --add-metadata "$1"
