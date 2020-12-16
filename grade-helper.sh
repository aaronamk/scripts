#!/bin/sh
# Author: aaronamk

$TERMINAL -e $EDITOR $1/diff.txt &
sleep 0.1
$TERMINAL -e $EDITOR $1/p*.py &
sleep 0.1
$EDITOR $1/grade.txt
