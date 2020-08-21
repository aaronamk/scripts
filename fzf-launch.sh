#!/bin/sh

options="firefox\nst\nnvim\nvifm\nranger\ngparted\nhtop\nAndroid Studio\nZoom\nColor Picker\narandr\nMusicBrainz Picard\nDiscord\nMinecraft\nWar Thunder"
selection=$(echo -e "$options" | fzf --prompt "Launch: " | tr '[:upper:]' '[:lower:]')

case $selection in
	"firefox")
		firefox
		;;
	"st")
		st
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
	"gparted")
		sudo gparted
		;;
	"htop")
		htop
		;;
	"android studio")
		flatpak run com.google.AndroidStudio
		;;
	"zoom")
		zoom
		;;
	"color picker")
		gtk-demo
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
	"minecraft")
		minecraft-launcher
		;;
	"war thunder")
		$COMPILED/WarThunder/launcher # doesn't work
		;;
esac
