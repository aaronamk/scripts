#!/bin/sh
# Author: aaronamk

options="Lutris\nSteam\nEpic/Heroic Launcher\nfirefox\nterminal\nnvim\nvifm\nnewsboat\nxev\nnmtui\nEQ (EasyEffects)\npass\nmount\numount\ngparted\nhtop\nintelgputop\nradeongputop\nmonitor\nIRC\nZoom\nColor Picker\nMouse Configurator\nController Configurator\nDisplay Configurator\nMusicBrainz Picard\nDiscord\nMinecraft\nEmulator (RetroArch)\n3DS (Citra)"
selection=$(printf "$options" | fzf --prompt "Launch: " | tr '[:upper:]' '[:lower:]')

case $selection in
  "lutris")
    setsid lutris &
    sleep 0.1
    ;;
  "steam")
    setsid steam &
    sleep 0.1
    ;;
  "epic/heroic launcher")
    setsid heroic &
    sleep 0.1
    ;;
  "firefox")
    setsid firefox &
    sleep 0.1
    ;;
  "terminal")
    setsid $TERMINAL &
    sleep 0.1
    ;;
  "nvim")
    nvim
    ;;
  "vifm")
    vifm
    ;;
  "newsboat")
    newsboat
    ;;
  "nmtui")
    nmtui-connect
    ;;
  "eq (easyeffects)")
    easyeffects
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
    setsid sudo gparted &
    sleep 0.1
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
  "irc")
    setsid hexchat &
    sleep 0.1
    ;;
  "zoom")
    setsid zoom &
    sleep 0.1
    ;;
  "color picker")
    setsid gtk4-demo &
    sleep 0.1
    ;;
  "mouse configurator")
    setsid piper &
    sleep 0.1
    ;;
  "controller configurator")
    setsid antimicrox &
    sleep 0.1
    ;;
  "display configurator")
    setsid arandr &
    sleep 0.1
    ;;
  "musicbrainz picard")
    setsid picard &
    sleep 0.1
    ;;
  "discord")
    discord
    ;;
  "minecraft")
    setsid minecraft-launcher &
    sleep 0.1
    ;;
  "emulator (retroarch)")
    setsid retroarch &
    sleep 0.1
    ;;
  "3ds (citra)")
    setsid citra-qt &
    sleep 0.1
    ;;
esac
