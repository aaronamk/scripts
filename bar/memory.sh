#!/bin/sh

mb=$(free -m | grep Mem: | awk '{print $3}')

if [[ ${#mb} == 4 ]]; then
	echo " ${mb:0:1}.${mb:1:1}"
else
	echo " $mb"
fi
