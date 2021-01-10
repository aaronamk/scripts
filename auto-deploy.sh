#!/bin/sh
# Author: Aaron Klein
# deploy Aaron's base user

mkdir ~/.cache
mkdir ~/.local
git clone git@github.com:aaronamk/dotfiles.git ~/.config
git clone git@github.com:aaronamk/scripts.git ~/.local/bin

# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
