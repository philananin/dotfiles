#!/usr/bin/env bash

PACKAGES=(
  autojump
  bat
  build-essential
  cmake
  fd-find
  findutils
  git
  htop
  ncdu
  nodejs
  npm
  python
  python-dev
  python3
  python3-dev
  ruby
  ruby-all-dev
  scala
  sqlite
  tmux
  tree
  wget
)

if [ "$EUID" -ne 0 ]; then
  echo "Must run as root"
  exit
fi

for pkg in ${PACKAGES[@]}; do
  apt install -y $pkg
done

apt update
apt upgrade -y
apt autoremove -y


