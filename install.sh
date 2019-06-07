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

if ! command -v rg 2>/dev/null; then
  echo "Downloading Ripgrep"
  curl -LO https://github.com/BurntSushi/ripgrep/releases/download/0.8.1/ripgrep_0.8.1_amd64.deb
  sudo dpkg -i ripgrep_0.8.1_amd64.deb
  rm ripgrep_0.8.1_amd64.deb
fi

source ~/.bashrc

echo "Installing tmux plugin manager"
[ -e "$HOME/.tmux/plugins/tpm" ] && rm -rf "$HOME/.tmux/plugins/tpm"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "done"
