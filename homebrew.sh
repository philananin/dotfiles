#!/usr/bin/env bash

TAPS=(
    homebrew/dupes
    homebrew/versions
    caskroom/fonts
    caskroom/versions
)

FORMULAS=(
    coreutils
    findutils
    zsh
    caskroom/cask/brew-cask
    macvim --override-system-vim
    curl
    fasd
    git
    htop-osx
    hub
    leiningen
    mercurial
    neo4j
    node
    postgresql
    python
    python3
    reattach-to-user-namespace
    redis
    sbt
    scala
    sqlite
    the_silver_searcher
    tmux
    tree
    wget
    zsh
)

CASKS=(
    alfred
    android-file-transfer
    bbc-iplayer-downloads
    dropbox
    firefox
    flux-beta
    font-inconsolata-dz-for-powerline
    font-inconsolata
    gimp
    google-chrome
    google-chrome-canary
    google-drive
    keepassx
    lighttable
    minecraft
    nosleep
    racket
    selfcontrol
    skype
    spotify
    steam
    sublime-text3
    transmission
    virtualbox
    vlc
    usb-overdrive
)

function setup() {
    [ -x "/usr/local/bin/brew" ] || {
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    }
}

function install_brewfiles() {
    brew tap ${TAPS[@]}
    brew install ${FORMULAS[@]}
}

function install_caskfiles() {
    brew cask install ${CASKS[@]}
    brew cask alfred link
}

function main() {
    setup

    brew update
    brew upgrade

    install_brewfiles
    install_caskfiles

    brew cleanup
    brew linkapps
    brew doctor
}

main
