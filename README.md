### Laptop Configuration

For Mac
* Show battery with percentage
* General:
  * Appearance: Auto
* Desktop & Dock:
  * Magnification: Off
  * Minimize: Scale effect
  * Minimize into app icon: On
  * Auto hide dock: On
  * Show recent apps: Off
  * Hot Corners - off
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
* Keyboard > Input sources > Add period with double-space: Off


### Dev Environment

#### Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# optionally,
brew analytics off
```

#### Misc
```
mkdir -p "$XDG_CONFIG_HOME"
cp /System/Applications/Utilities/Terminal.app/Contents/Resources/Fonts/* ~/Library/Fonts/
```

#### Brew CLI Tools
```
brew install fish \
             git \
             gh \
             git-delta \
             mise \
             ripgrep \
             jq \
             fd \
             sd \
             bat \
             hexyl \
             expect \
             coreutils \
             tree \
             pstree \
             doggo
```

bttf: https://github.com/BurntSushi/bttf/releases

#### Brew Apps
```
brew install 1password \
             ghostty \
             visual-studio-code \
             zed \
             rectangle \
             clocker \
             google-chrome \
             firefox \
             spotify \
             slack \
             docker
```

#### Shell
```
echo "$(which fish)" | sudo tee -a /etc/shells
chsh -s $(which fish)
```

#### Dotfiles
```
# if a work computer
git config --file ~/.gitconfig.local user.email <work-email>

mise bootstrap \
     --from 'https://github.com/joecox/dotfiles' \
     --from-dir ~/.dotfiles \
     --config-dir mise
```

#### AWS Setup
```
brew install awscli
aws configure
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
