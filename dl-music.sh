#!/bin/sh

youtube-dl -if bestaudio --extract-audio --add-metadata "$1"
