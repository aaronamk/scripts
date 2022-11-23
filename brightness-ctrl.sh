#!/bin/sh
# Usage: brightness-ctrl.sh +/-
# Author: aaronamk

sudo ddcutil --bus=1 setvcp 10 $1 5
sudo ddcutil --bus=3 setvcp 10 $1 10
