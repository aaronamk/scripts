#!/bin/sh
# Author: aaronamk

options="firefox\nterminal\nnvim\nvifm\nranger\nnewsboat\nxev\nnmtui\npass\nmount\numount\ngparted\nhtop\nintelgputop\nradeongputop\nmonitor\nZoom\nColor Picker\nMouse Configurator\nMusicBrainz Picard\nDiscord\nMinecraft\nEmulator (RetroArch)\n3DS (Citra)"
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
	"pass")
		fzf-pass.sh
		;;
	"xev")
		xev
		;;
	"mount")
		fzf-mount.sh
		;;
	"umount")
		fzf-mount.sh umount
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
	"minecraft")
		minecraft-launcher
		;;
	"emulator (retroarch)")
		retroarch
		;;
	"3ds (citra)")
		citra-qt
		;;
esac
