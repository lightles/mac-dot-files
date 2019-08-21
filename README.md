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

## ZSH Setup
``` 
ln ~/.config/zsh/zshrc ~/.zshrc
```
# Neovim Setup

run this command and quit neovim both times is pops up (bug with vim plug i believe working on workaround)
*this will install node*
```
cd ~/.config/nvim; ./install.sh
```

# TMUX
```
tmux -f ~/.config/tmux/config
```
