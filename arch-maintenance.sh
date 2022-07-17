#!/bin/sh
# Author: aaronamk
# perform maintenance on Arch linux

sudo reflector --verbose --country US --latest 5 --protocol https --sort rate --save /etc/pacman.d/mirrorlist # update mirrors

# clear unused packages
sudo paccache -rk1
sudo paccache -ruk0
sudo pacman -Sc

yay -S archlinux-keyring
yay -Syu # update
yay -Rns $(yay -Qtdq) # remove orphans
