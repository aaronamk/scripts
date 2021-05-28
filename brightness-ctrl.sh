#!/bin/sh
# Usage: brightness-ctrl.sh +/-
# Author: aaronamk

sudo ddcutil --bus=4 setvcp 10 $1 10
