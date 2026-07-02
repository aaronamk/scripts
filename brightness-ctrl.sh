#!/bin/sh
# Usage: brightness-ctrl.sh +/-
# Author: aaronamk

sudo ddcutil --bus=15 setvcp 10 $1 10
sudo ddcutil --bus=16 setvcp 10 $1 5
