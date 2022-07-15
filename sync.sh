#!/bin/sh

WORKDEV_DIR="$HOME/Desktop/projects/workdev/"

# iterms profile
cp $HOME/itermProfile/default-iterm-profile.json $WORKDEV_DIR/

# nvchad neovim/nvim customization
cp -R $HOME/.config/nvim/lua/custom/ $WORKDEV_DIR/nvim/custom/

# oh-my-zsh
cp $HOME/.zshrc $WORKDEV_DIR.

# vscode
cp $HOME/Library/Application\ Support/Code/User/settings.json $WORKDEV_DIR/vscode/
cp $HOME/Library/Application\ Support/Code/User/keybindings.json $WORKDEV_DIR/vscode/
