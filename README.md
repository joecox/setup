### Dev Environment

```
curl -fsSL https://mise.run | sh
export PATH="$HOME/.local/bin:$PATH"
mise exec gh@latest -- gh auth login --hostname github.com --git-protocol https --web
mise exec gh@latest -- gh auth setup-git --hostname github.com
```

```
# if a work computer
git config --file ~/.gitconfig.local user.email <work-email>

mise bootstrap \
     --from 'https://github.com/joecox/dotfiles' \
     --from-dir ~/.dotfiles \
     --config-dir mise
```

```
mkdir -p "$XDG_CONFIG_HOME"
cp /System/Applications/Utilities/Terminal.app/Contents/Resources/Fonts/* ~/Library/Fonts/
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
