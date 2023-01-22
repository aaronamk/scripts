#!/bin/sh
# Author: aaronamk

options="firefox\nterminal\nnvim\nvifm\nnewsboat\nxev\nNetwork Configurator\nBluetooth Configurator\nEQ (EasyEffects)\npass\nmount\numount\nDisk Usage (Baobab)\ngparted\nhtop\nintelgputop\nradeongputop\nmonitor\nIRC\nZoom\nColor Picker\nMouse Configurator\nController Configurator\nDisplay Configurator\nMusicBrainz Picard\nDiscord\nLutris\nSteam\nEpic/Heroic Launcher\nMinecraft\nRetroArch (Emulator)\nCitra (3DS Emulator)\nCemu (Wii U Emulator)"
selection=$(printf "$options" | fzf --prompt "Launch: " | tr '[:upper:]' '[:lower:]')

case $selection in
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
  "network configurator")
    nmtui-connect
    ;;
  "bluetooth configurator")
    setsid blueman-manager &
    sleep 0.1
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
  "disk usage (baobab)")
    setsid baobab &
    sleep 0.1
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
    setsid discord &
    sleep 0.1
    ;;
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
  "minecraft")
    setsid minecraft-launcher &
    sleep 0.1
    ;;
  "retroarch (emulator)")
    setsid retroarch &
    sleep 0.1
    ;;
  "citra (3ds emulator)")
    setsid citra-qt &
    sleep 0.1
    ;;
  "cemu (wii u emulator)")
    setsid cemu &
    sleep 0.1
    ;;
esac
