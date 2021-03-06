#!/bin/sh
# Author: aaronamk

options="firefox\nterminal\nnvim\nvifm\nranger\nnewsboat\nxev\nnmtui\ngparted\nhtop\ngputop\nmonitor\nZoom\nColor Picker\nMouse Configurator\narandr\nMusicBrainz Picard\nDiscord\nSteam\nMinecraft\nWar Thunder\nBorderlands"
selection=$(printf "$options" | fzf --prompt "Launch: " | tr '[:upper:]' '[:lower:]')

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
	"gputop")
		sudo intel_gpu_top
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
