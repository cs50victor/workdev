#!/bin/sh

# iterms profile
cp $HOME/itermProfile/default-iterm-profile.json .

# nvchad neovim/nvim customization
cp -R $HOME/.config/nvim/lua/custom/ nvim/custom/

# oh-my-zsh
cp $HOME/.zshrc .

# vscode
cp $HOME/Library/Application\ Support/Code/User/settings.json vscode/
cp $HOME/Library/Application\ Support/Code/User/keybindings.json vscode/
