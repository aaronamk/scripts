#!/bin/sh

mb=$(free -h | grep Mem: | awk '{print $3}')

[ ${#mb} -eq 4 ] && echo " ${mb:0:1}." && exit

printf %s\\n " $mb"

# [ ${#mb} == 4 ] && echo " ${mb:0:1}.${mb:1:1}" && exit
