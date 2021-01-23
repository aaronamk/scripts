#!/bin/sh
# Author: Aaron Klein
# deploy Aaron's base user
# transfer files from previous computer before running

# create necessary directories (ignore if already exist)
mkdir -p ~/.cache ~/.local/share ~/.local/compiled Desktop Downloads mnt Music Pictures
echo 'export ZDOTDIR="$HOME/.config/zsh"'

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

# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
