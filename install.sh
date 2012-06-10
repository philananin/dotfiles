#!/bin/bash

echo "init submodules"
git submodule init
git submodule update

echo "delete old dotfiles"
rm ~/.vimrc
rm ~/.vim
rm ~/.zshrc
rm ~/.tmux.conf

echo "create symlinks"
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/vim ~/.vim
ln -s $PWD/zshrc ~/.zshrc
ln -s $PWD/tmux.conf ~/.tmux.conf

echo "done"
