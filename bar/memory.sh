#!/bin/sh

mb=$(free -m | grep Mem: | awk '{print $3}')

[ ${#mb} == 4 ] && echo " ${mb:0:1}.${mb:1:1}" && exit

echo " $mb"
