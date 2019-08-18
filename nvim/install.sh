#!/bin/bash
virtualenv -p python3 $HOME/.config/nvim/pynvim;
source $HOME/.config/nvim/pynvim/bin/activate;
pip install pyls pynvim;
mkdir $HOME/.config/nvim/swapfiles;
mkdir $HOME/.config/nvim/bundle;
nvim +'call myCore#UpdatePlugins()' +qall;
