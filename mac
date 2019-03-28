#!/bin/bash

user_agrees() {
  msg="$1"
  printf "%s [Y/n]: " "$msg"
  read -r choice
  # shellcheck disable=SC2021
  choice=$(echo "$choice" | tr '[YN]' '[yn]')
  [[ "$choice" =~ ^(yes|y| ) ]] || [ -z "$choice" ]
}

set -e

# Install Xcode command line tools
if user_agrees "Install Xcode Command Line Tools?" ; then
  xcode-select --install
fi

# Fixing directory ownership for Homebrew
HOMEBREW_PREFIX="/usr/local"
if [ -d "$HOMEBREW_PREFIX" ]; then
  if ! [ -r "$HOMEBREW_PREFIX" ]; then
    sudo chown -R "$LOGNAME:admin" /usr/local
  fi
else
  sudo mkdir "$HOMEBREW_PREFIX"
  sudo chflags norestricted "$HOMEBREW_PREFIX"
  sudo chown -R "$LOGNAME:admin" "$HOMEBREW_PREFIX"
fi

if ! [[ "$(command -v brew)" ]] ; then
  echo "Installing Homebrew ..."
  curl -fsS 'https://raw.githubusercontent.com/Homebrew/install/master/install' | ruby
  export PATH="/usr/local/bin:$PATH"
fi

set +e
# Install brew tools
user_agrees "Install bash?"      && brew install bash
user_agrees "Install emacs?"     && brew install emacs
user_agrees "Install git?"       && brew install git
user_agrees "Install git-flow?"  && brew install git-flow
user_agrees "Install asdf?"      && brew install asdf
user_agrees "Install rcm?"       && brew tap thoughtbot/formulae && brew install rcm
user_agrees "Install yarn?"      && brew install yarn
user_agrees "Install gnupg?"     && brew install gnupg
user_agrees "Install z?"         && brew install z
user_agrees "Install ripgrep?"   && brew install ripgrep
user_agrees "Install tree?"      && brew install tree
user_agrees "Install pstree?"    && brew install pstree
user_agrees "Install gnu-sed?"   && brew install gnu-sed
user_agrees "Install gzip?"      && brew install gzip
user_agrees "Install jq?"        && brew install jq
user_agrees "Install cocoapods?" && brew install cocoapods

# brew cask
echo "Installing applications ..."
user_agrees "Install 1Password.app?" && brew cask install 1password
user_agrees "Install Docker.app?"    && brew cask install docker
user_agrees "Install DevDocs.app?"   && brew cask install devdocs
user_agrees "Install Chrome.app?"    && brew cask install google-chrome
user_agrees "Install iTerm2.app?"    && brew cask install iterm2
user_agrees "Install Kap.app?"       && brew cask install kap
user_agrees "Install Keybase.app?"   && brew cask install keybase
user_agrees "Install Postico.app?"   && brew cask install postico
user_agrees "Install ShiftIt.app?"   && brew cask install shiftit
user_agrees "Install Spotify.app?"   && brew cask install spotify
user_agrees "Install Teensy.app?"    && brew cask install teensy
user_agrees "Install VSCode.app?"    && brew cask install visual-studio-code

set -e
# Install zsh/oh-my-zsh
if user_agrees "Install zsh/oh-my-zsh/change shell to zsh?" ; then
  echo "Installing zsh ..." && brew install zsh
  echo "Installing oh-my-sh ..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  echo "Changing shell to zsh ..."
  shell_path="$(command -v zsh)"
  if ! grep "$shell_path" /etc/shells > /dev/null 2>&1 ; then
    echo "Adding '$shell_path' to /etc/shells"
    sudo sh -c "echo $shell_path >> /etc/shells"
  fi
  sudo chsh -s "$shell_path" "$USER"
fi

set +e
echo "Adding asdf plugins ..."
# shellcheck disable=SC1090
source "$(brew --prefix asdf)/asdf.sh"
asdf plugin-add nodejs
asdf plugin-add ruby

set -e
if user_agrees "Download dotfiles and sync?" ; then
  git clone https://github.com/joecox/dotfiles ~/.dotfiles
  rcup -v -x com.googlecode.iterm2.plist -x vscode-settings.json

  defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.dotfiles"
  defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

  mkdir -p ~/Library/Application\ Support/Code/User/
  ln -s ~/.dotfiles/vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json
fi
