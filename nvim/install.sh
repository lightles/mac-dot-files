#!/bin/sh

echo "\nBEGINNING NEOVIM SETUP \n\n"
NVIM_DIR=$HOME/.config/nvim
PYNVIM=$HOME/.config/nvim/bin/pynvim

echo "\nCOMPLETING DIRECTORY STRUCTURE\n\n"
mkdir $NVIM_DIR/swapfiles &&
mkdir $NVIM_DIR/bundle &&
mkdir $NVIM_DIR/bin &&

echo "\nSETTING UP PYTHON3 ENVIRONMENT\n\n"
virtualenv -p python3 $PYNVIM &&
source $PYNVIM/bin/activate &&
pip install pyls pynvim &&


echo "\nINSTALLING VIM-PLUG LATEST\n\n"
curl -fLo $NVIM_DIR/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&

echo "\nINSTALLING PLANTUML LATEST\n\n"
curl -fLo $NVIM_DIR/bin/plantuml.jar \
    https://sourceforge.net/projects/plantuml/files/plantuml.jar/download &&

echo "\nINSTALLING NODE\n\n"
curl -sL install-node.now.sh/lts | bash &&

echo "\nINSTALLING NEOVIM PLUGINS\n\n"
nvim --noplugin +'PlugInstall'; 
nvim +'call myCore#UpdateCOCPlugins()'; 

echo "\nINSTALLATION COMPLETE\n\n"
