#!/bin/bash
# Author: aaronamk

# print help message
print_help() {
	format="%-24.25s%s\n"
	printf "Usage: battery.sh [options]\n\n"
	printf $format "-h" "display this help and exit"
	printf $format "-b <battery number>" "display info about a specific battery"
}

# print battery information
print_inf() {
	[ $print ] && printf " %s%%\n" $1 && exit 0
	echo " %s%%" $1 > $SCRIPTS/bar/blocks && exit 0
}

# write battery information
write_inf() {
	echo " %s%%" $1 > $SCRIPTS/bar/blocks
}


while getopts 'wb:h' OPTION; do
	case $OPTION in
		"b")
			battery="/sys/class/power_supply/BAT$2"
			cat $battery/capacity
			exit 0
			;;
		"h")
			print_help
			exit 0
			;;
		?)
			echo -e "Invalid option: option $OPTION not recognized\n"
			print_help
			exit 1
			;;
	esac
done

battery="/sys/class/power_supply"

if [ -z $BAT ] then
	charge0=$(cat $battery/BAT0/capacity)
	charge1=$(cat $battery/BAT1/capacity)
	charge=$(((charge0+charge1)/2))
	print_inf $charge
	exit 0
fi

#[ -z $1 ] &&

#&& echo "Specify battery number \"0\" or \"1\"" && exit 1
