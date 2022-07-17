#!/bin/sh
# Author: aaronamk
# deploy aaronamk's base user
# transfer files from previous computer before running

# create necessary directories (ignore if already exist)
mkdir -p ~/.cache ~/.local/share ~/.local/compiled Desktop Downloads mnt Music Pictures
sudo echo 'export ZDOTDIR="$HOME/.config/zsh"' > /etc/zsh/zshenv

# install a few necessary packages (ignore if already exist)
sudo pacman -S --needed base-devel gnupg openssh

gpg --full-generate-key

# clone repos from github
eval "$(ssh-agent -s)"
git clone git@github.com:aaronamk/dotfiles.git ~/.config
git clone git@github.com:aaronamk/scripts.git ~/.local/bin

# install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

# install all packages (ignore if already exist)
yay -S --needed - < ~/.config/package-list.txt
