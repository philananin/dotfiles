#! /usr/bin/env bash

echo "removing old vim installation"
rm -rf "$HOME/.vim"

mkdir "$HOME/.vim/undo"

echo "installing vim-plug"
curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "installing plugins"
currentDir=$(cd $(dirname $0); pwd -P)
ln -s "$currentDir/bundles.vim" "$HOME/.vim/bundles.vim"
vim -u "$HOME/.vim/bundles.vim" +PlugInstall +qall
