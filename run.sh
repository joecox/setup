#!/usr/bin/env bash

sudo -v

# Install Xcode command line tools
xcode-select --install

# Ensure /usr/local ownership
sudo chown -R $USER:admin /usr/local

# Install Homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install brew things
brew install gnu-sed --with-default-names
brew install emacs \
             git \
             gnupg \
             gzip \
             jq \
             leiningen \
             pstree \
             ripgrep-bin \
             tree \
             vault \
             z

# Install brew-cask things
brew cask install docker \
                  iterm2 \
                  keybase

# TODO: setup new ssh key with github
