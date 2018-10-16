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

# Setup shell
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mkdir -p ~/.config
echo 'export XDG_CONFIG_HOME="$HOME/.config"' >> ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/joecox/setup/master/com.googlecode.iterm2.plist > ~/.config/com.googlecode.iterm2.plist

# Install brew things
brew install gnu-sed --with-default-names
brew install emacs \
             git \
             gnupg \
             gzip \
             jq \
             leiningen \
             pstree \
             ripgrep \
             tree \
             vault \
             yarn \
             z

# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# Install brew-cask things
brew cask install 1password
                  docker \
                  flux \
                  google-chrome \
                  iterm2 \
                  keybase \
                  spotify

# TODO: setup z caveats in zshrc
# TODO: setup new ssh key with github
