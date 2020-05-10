#!/bin/bash

youtube-dl -f bestaudio --extract-audio --add-metadata "$1"
