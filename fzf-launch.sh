#!/bin/sh
# Author: aaronamk

options="firefox\nterminal\nnvim\nvifm\nranger\nnewsboat\nxev\nnmtui\ngparted\nhtop\nmonitor\nZoom\nColor Picker\nMouse Configurator\narandr\nMusicBrainz Picard\nDiscord\nSteam\nMinecraft\nWar Thunder\nBorderlands"
selection=$(echo -e "$options" | fzf --prompt "Launch: " | tr '[:upper:]' '[:lower:]')

case $selection in
	"firefox")
		firefox
		;;
	"terminal")
		$TERMINAL
		;;
	"nvim")
		nvim
		;;
	"vifm")
		vifm
		;;
	"ranger")
		ranger
		;;
	"newsboat")
		newsboat
		;;
	"nmtui")
		nmtui-connect
		;;
	"xev")
		xev
		;;
	"gparted")
		sudo gparted
		;;
	"htop")
		htop
		;;
	"monitor")
		fzf-monitor-source.sh
		;;
	"zoom")
		zoom
		;;
	"color picker")
		gtk-demo
		;;
	"mouse configurator")
		piper
		;;
	"arandr")
		arandr
		;;
	"musicbrainz picard")
		picard
		;;
	"discord")
		discord
		;;
	"steam")
		steam
		;;
	"minecraft")
		minecraft-launcher
		;;
	"war thunder")
		$COMPILED/WarThunder/launcher # doesn't work
		;;
	"borderlands")
		;;
esac
