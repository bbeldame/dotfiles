#!/bin/sh

HOME=/Users/$(whoami)
DOTFOLDER=$HOME/Development/perso/dotfiles
VSFOLDER="$HOME/Library/Application Support/Code/User"
WHEREAMI=$(pwd)

cp -iR $DOTFOLDER/vscode/* "${VSFOLDER}"
cp -i $DOTFOLDER/.zshrc $HOME/
cp -i $DOTFOLDER/.vimrc $HOME/
sleep 1
source $HOME/.zshrc
echo "Installation done"
