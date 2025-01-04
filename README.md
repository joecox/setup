### Laptop Configuration

For Mac
* Show battery with percentage
* General:
  * Appearance: Auto
* Dock:
  * Magnification: Off
  * Minimize: Scale effect
  * Minimize into app icon: On
  * Auto hide dock: On
  * Show recent apps: Off
* Bluetooth
  * Show in menu bar
* Trackpad
  * Tap to click: On
  * Click level: Light
  * Force click: Off
  * Scroll direction natural: Off
* Display
  * Night Shift: sunset to sunrise
  * Night Shift temp: 75% warm
* Date and Time
  * Clock: Show day of week: On
  * Clock: Show date: On


### Dev Environment
#### Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# optionally,
brew analytics off
```

#### Brew Install
```
brew install bash
brew install zsh
brew install emacs
brew install git
brew install ripgrep
brew install tree
brew install pstree
brew install jq
brew install gh
brew install git-delta
```

#### Brew Cask Install
```
brew install --cask 1password

brew install --cask ghostty
brew install --cask visual-studio-code
brew install --cask rectangle
brew install --cask clocker

brew install --cask google-chrome
brew install --cask firefox
brew install --cask spotify

brew tap homebrew/cask-drivers && brew install logitech-options
```

#### Dotfiles
```
# clone dotfiles
gh repo clone https://github.com/joecox/dotfiles ~/.dotfiles
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig

source ~/.zshrc

mkdir -p "$XDG_CONFIG_HOME"
mkdir -p "$XDG_CONFIG_HOME/ghostty/"
ln -s ~/.dotfiles/ghostty-config "$XDG_CONFIG_HOME/ghostty/config"

mkdir -p "$XDG_CONFIG_HOME/ghostty/themes"
ln -s ~/.dotfiles/ghostty-themes/quiet-light "$XDG_CONFIG_HOME/ghostty/themes/quiet-light"

mkdir -p ~/Library/Application\ Support/Code/User/
ln -s ~/.dotfiles/vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json

# Add empty .zshrc-local for computer-specific stuff (loaded in .zshrc)
touch ~/.zshrc-local
```

#### Browser
* Install [JSON Formatter](https://github.com/callumlocke/json-formatter)
* Install [uBlock Origin](https://github.com/gorhill/uBlock)
* Install [Vimium](https://github.com/philc/vimium)
  Vimium Config:
  ```
  unmapAll
  map <c-n> scrollDown
  map <c-p> scrollUp
  map <c-r> LinkHints.activateMode
  ```
