#!/bin/bash

echo "delete old dotfiles"
rm -rf ~/.vim
rm ~/.vimrc
rm ~/.zshrc
rm ~/.tmux.conf

echo "install vundle"
mkdir -p ~/.vim/bundle/vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo "create symlinks"
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/zshrc ~/.zshrc
ln -s $PWD/tmux.conf ~/.tmux.conf
ln -s $PWD/tmuxline.conf ~/.tmuxline.conf
ln -s $PWD/gitconfig ~/.gitconfig

echo "installing vundle packages"
vim +BundleInstall +qall

echo "done"
