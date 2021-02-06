#!/bin/sh
# Usage: brightness-ctrl.sh +/-
# Author: aaronamk

sudo ddcutil --bus=5 setvcp 10 $1 10
