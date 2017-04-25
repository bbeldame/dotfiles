#!/bin/sh

HOME=/Users/$(whoami)
DOTFOLDER=$HOME/Development/perso/dotfiles
VSFOLDER="$HOME/Library/Application Support/Code/User"
WHEREAMI=$(pwd)

cp -R $DOTFOLDER/vscode/* "${VSFOLDER}"
cp $DOTFOLDER/*rc $HOME/
echo "Installation done"
