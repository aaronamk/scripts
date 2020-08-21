#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Detect monitors and load bars accordingly
monitors=$(polybar --list-monitors | grep "DP1: 2560x1440")
if [[ $(polybar --list-monitors | grep "DP1: 2560x1440" | wc -l) == 1 ]]; then
	MONITOR=DP1 polybar --reload bottom &
	MONITOR=eDP1 polybar --reload secondary &
else
	MONITOR=eDP1 polybar --reload bottom &
fi
