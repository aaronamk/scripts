#!/bin/sh
# Author: Aaron Klein

# print help message
print_help() {
	format="%-24.25s%s\n"
	printf "Usage: battery.sh [options]\n\n"
	printf $format "-h" "display this help and exit"
	printf $format "-b <battery number>" "display info about a specific battery"
}

# print battery information
print_inf() {
	printf "%s%%\n" $1
}

case $1 in
	"")
		battery="/sys/class/power_supply"
		charge0=$(cat $battery/BAT0/capacity)
		charge1=$(cat $battery/BAT1/capacity)
		charge=$(((charge0+charge1)/2))
		print_inf $charge
		exit 0
		;;
	"-b")
		battery="/sys/class/power_supply/BAT$2"
		cat $battery/capacity
		exit 0
		;;
	"-h")
		print_help
		exit 0
		;;
	*)
		echo -e "Invalid option: option $1 not recognized\n"
		print_help
		exit 0
		;;
esac

#[ -z $1 ] &&

#&& echo "Specify battery number \"0\" or \"1\"" && exit 1
