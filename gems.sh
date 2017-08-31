#!/usr/bin/env bash

PACKAGES=(
  tmuxinator
)

if [ "$EUID" -ne 0 ]; then
  echo "Must run as root"
  exit
fi

for pkg in ${PACKAGES[@]}; do
  gem install $pkg
done

gem update

