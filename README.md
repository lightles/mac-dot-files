# Requirements
These items must be installed and in your $PATH
```
zsh
tmux
neovim
jq
python3 virtualenv command
```


# Installation

```
git clone https://github.com/lightles/mac-dot-files; 
git submodule update --init --recursive
```
Run the following commands to setup a particular tool.

## ZSH Setup
``` 
ln ~/.config/zsh/zshrc ~/.zshrc
```
# Neovim Setup

```
cd ~/.config/nvim; ./install.sh
```

# TMUX
```
tmux -f ~/.config/tmux/config
```
