#!/usr/bin/env bash

echo "replacing dotfiles"
currentDir=$(cd $(dirname $0); pwd -P)
for dotfile in $(find $currentDir -type 'f' -name '.*' -exec basename {} \;); do
  rm "$HOME/$dotfile"
  ln -s "$currentDir/$dotfile" "$HOME/$dotfile"
done

source install-vim.sh

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
