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
brew tap thoughtbot/formulae && brew install rcm
brew install ripgrep
brew install tree
brew install pstree
brew install gzip
```

#### Brew Cask Install
```
brew tap homebrew/cask-drivers && brew install logitech-options
brew install --cask iterm2
brew install --cask shiftit
brew install --cask spotify
brew install --cask visual-studio-code
```

#### Oh-My-Zsh
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### Dotfiles
```
git clone https://github.com/joecox/dotfiles ~/.dotfiles
rcup -v -x com.googlecode.iterm2.plist -x vscode-settings.json

defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.dotfiles"
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true

mkdir -p ~/Library/Application\ Support/Code/User/
ln -s ~/.dotfiles/vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json
```

#### Chrome
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
