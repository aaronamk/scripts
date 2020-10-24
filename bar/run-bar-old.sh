#!/bin/sh

declare -a blocks

bat0() {
	echo /sys/class/power_supply/BAT0/capacity | entr xsetroot -name "$(battery.sh -b 0)"
}

bat1() {
	echo /sys/class/power_supply/BAT1/capacity | entr xsetroot -name "$(battery.sh -b 1)"
}

update_bar() {
	for block in "${blocks[@]}"; do $name = "$name$block"; done
	xsetroot -name "$string"
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

echo /sys/class/power_supply/BAT0/capacity | entr -s 'bat0'
