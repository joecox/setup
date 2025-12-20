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

```
mkdir -p "$XDG_CONFIG_HOME"
```

#### Brew CLI Tools
```
brew install fish \
             git \
             gh \
             git-delta \
             ripgrep \
             jq \
             fd \
             sd \
             hexyl \
             expect \
             coreutils \
             tree \
             pstree
```

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

# if needed
brew install slack
brew install --cask docker
```

#### Shell
```
echo "$(which fish)" | sudo tee -a /etc/shells
chsh -s $(which fish)
```

#### Dotfiles
```
# clone dotfiles
gh repo clone https://github.com/joecox/dotfiles ~/.dotfiles
ln -s ~/.dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -s ~/.dotfiles/fish/functions/* ~/.config/fish/functions/
ln -s ~/.dotfiles/fish/completions/* ~/.config/fish/completions/

ln -s ~/.dotfiles/gitconfig ~/.gitconfig

mkdir -p "$XDG_CONFIG_HOME/ghostty/"
ln -s ~/.dotfiles/ghostty-config "$XDG_CONFIG_HOME/ghostty/config"

mkdir -p "$XDG_CONFIG_HOME/ghostty/themes"
ln -s ~/.dotfiles/ghostty-themes/quiet-light "$XDG_CONFIG_HOME/ghostty/themes/quiet-light"

mkdir -p ~/Library/Application\ Support/Code/User/
ln -s ~/.dotfiles/vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/.dotfiles/vscode-keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

# TODO: fish conf.d files

# Gets rid of the "last login" message
touch "$HOME/.hushlogin"
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
