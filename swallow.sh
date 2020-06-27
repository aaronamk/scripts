#!/bin/sh

id=$(xdo id)
xdo hide
sh -c "$*"
xdo show "$id"
