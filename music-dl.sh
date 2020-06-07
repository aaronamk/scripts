#!/bin/bash

youtube-dl -if bestaudio --extract-audio --add-metadata "$1"
