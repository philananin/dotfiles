#!/bin/bash

# set git user
[ -z `git config --global user.name` ] && git config --global user.name "philananin"
[ -z `git config --global user.email` ] && git config --global user.email "phil.ananin@gmail.com"

# coloured git output
git config --global color.ui auto

# symlinks
[ ! -d ~/.vim ] && ln -s "$PWD/vim" ~/.vim
[ ! -f ~/.vimrc ] && ln -s "$PWD/vimrc" ~/.vimrc
[ ! -f ~/.tmux.conf ] && ln -s "$PWD/tmux.conf" ~/.tmux.conf
