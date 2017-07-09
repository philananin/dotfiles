#!/usr/bin/env bash

echo "replacing dotfiles"
currentDir=$(cd $(dirname $0); pwd -P)
for dotfile in $(find $currentDir -type 'f' -name '.*' -exec basename {} \;); do
  [ -e "$HOME/$dotfile" ] && rm "$HOME/$dotfile"
  ln -s "$currentDir/$dotfile" "$HOME/$dotfile"
done

if { [ "$TERM" = "screen-256color" ] && [ -n "$TMUX" ]; } then
  echo "reloading tmux config"
  tmux source-file ~/.tmux.conf > /dev/null
fi

echo "Downloading git-prompt.sh"
curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > ~/.git-prompt.sh

source ~/.bashrc

echo "done"
