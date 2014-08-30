#!/bin/bash

echo "replacing dotfiles"
currentDir=$(cd $(dirname $0); pwd -P)
for dotfile in $(find $currentDir -type 'f' -name '.*' -exec basename {} \;); do
  rm "$HOME/$dotfile"
  ln -s "$currentDir/$dotfile" "$HOME/$dotfile"
done

echo "removing old vim installation"
rm -rf "$HOME/.vim"

echo "installing vundle"
mkdir -p "$HOME/.vim/bundle/vundle"
git clone https://github.com/gmarik/vundle.git "$HOME/.vim/bundle/vundle"
ln -s "$currentDir/bundles.vim" "$HOME/.vim/bundles.vim"
vim -u "$HOME/.vim/bundles.vim" +BundleInstall +qall

if { [ "$TERM" = "screen-256color" ] && [ -n "$TMUX" ]; } then
  echo "reloading tmux config"
  tmux source-file ~/.tmux.conf > /dev/null
fi

echo "installing tmuxp"
sudo pip install tmuxp

echo "installing jedi"
sudo pip install jedi

echo "installing jrnl"
sudo pip install jrnl

echo "installing jsctags for tern"
sudo npm install -g git://github.com/ramitos/jsctags.git

echo "installing scheme indentation file"
mkdir -p "$HOME/bin"
rm "$HOME/bin/scmindent.rkt"
ln -s "$currentDir/scmindent.rkt" "$HOME/scmindent.rkt"

echo "done"
