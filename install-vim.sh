#! /usr/bin/env bash

echo "removing old vim installation"
rm -rf "$HOME/.vim"

echo "installing vundle"
mkdir -p "$HOME/.vim/bundle/vundle"
git clone https://github.com/gmarik/vundle.git "$HOME/.vim/bundle/vundle"
currentDir=$(cd $(dirname $0); pwd -P)
ln -s "$currentDir/bundles.vim" "$HOME/.vim/bundles.vim"
vim -u "$HOME/.vim/bundles.vim" +BundleInstall +qall

# tern requires installation, use --prefix to avoid having to change dir
npm --prefix ~/.vim/bundle/tern_for_vim install ~/.vim/bundle/tern_for_vim
