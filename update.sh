#!/bin/sh

HOME=/Users/$(whoami)
DOTFOLDER=$HOME/Development/perso/dotfiles
VSFOLDER="$HOME/Library/Application Support/Code/User"
WHEREAMI=$(pwd)

cp "${VSFOLDER}/keybindings.json" $DOTFOLDER/vscode/
cp "${VSFOLDER}/settings.json" $DOTFOLDER/vscode/
cp -R "${VSFOLDER}/snippets" $DOTFOLDER/vscode/
cp $HOME/.zshrc $DOTFOLDER/
cp $HOME/.vimrc $DOTFOLDER/
cd $DOTFOLDER
git add .
git diff --staged
git commit -m "Update"
git push
cd $WHEREAMI
