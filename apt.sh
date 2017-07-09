#!/usr/bin/env bash

PACKAGES=(
  findutils
  git
  htop
  mercurial
  nodejs
  npm
  python3
  racket
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

