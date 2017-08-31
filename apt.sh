#!/usr/bin/env bash

PACKAGES=(
  build-essential
  cmake
  findutils
  git
  htop
  mercurial
  nodejs
  npm
  python
  python-dev
  python3
  python3-dev
  racket
  ruby
  ruby-all-dev
  silversearcher-ag
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

