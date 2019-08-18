#!/bin/sh
virtualenv -p python3 $HOME/.config/nvim/pynvim &&
source $HOME/.config/nvim/pynvim/bin/activate &&
pip install pyls pynvim &&

mkdir $HOME/.config/nvim/swapfiles &&
mkdir $HOME/.config/nvim/bundle &&

curl -fLo ~/.config/nvim/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&

nvim --noplugin +'PlugUpdate' +qall;
