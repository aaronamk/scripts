#!/bin/sh
# Author: aaronamk

options="firefox\nterminal\nnvim\nvifm\nranger\nnewsboat\nxev\nnmtui\ngparted\nhtop\nintelgputop\nradeongputop\nmonitor\nZoom\nColor Picker\nMouse Configurator\nMusicBrainz Picard\nDiscord\nSteam"
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
	"intelgputop")
		sudo intel_gpu_top
		;;
	"radeongputop")
		sudo radeontop
		;;
	"monitor")
		fzf-monitor-source.sh
		;;
	"zoom")
		zoom
		;;
	"color picker")
		gtk4-demo
		;;
	"mouse configurator")
		piper
		;;
	"display configurator")
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
esac
