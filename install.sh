#!/bin/bash

# symlinks
[ ! -d ~/.vim ] && ln -s "$PWD/vim" ~/.vim
[ ! -f ~/.vimrc ] && ln -s "$PWD/vimrc" ~/.vimrc
[ ! -f ~/.tmux.conf ] && ln -s "$PWD/tmux.conf" ~/.tmux.conf
