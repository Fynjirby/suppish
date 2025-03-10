#!/bin/zsh
echo "The following things will be installed & updated:
- zsh with Oh My Zsh
- zsh plugins: git, zsh-syntax-highlighting, zsh-autosuggestions, brew
- homebrew
- node.js + npm
- bun.js
- python
- lazygit, bat, thefuck, yazi, openssl
- iterm2
- zed + nvim
- raycast
- google chrome
- cloudflare-warp
- mos
- spotify
- telegram
- qbittorrent
- balenaetcher
- appcleaner
- uninstallpkg
- shottr
- speedtest
- unzip
- ipherr
- wutdepc
- tydid
* Dock will hide faster on macOS"

time_left=7
while [[ $time_left -gt 0 ]]; do
    echo -n "\r$time_left "
    time_left=$((time_left - 1))
    sleep 1
done

echo "\nLFG!"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval $(/opt/homebrew/bin/brew shellenv)
curl -sS https://starship.rs/install.sh | sh

# ~/.zshrc
echo 'export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions brew)

source $ZSH/oh-my-zsh.sh

# EXPORTS
export PATH="/opt/homebrew/bin:$PATH"
export EDITOR="open -a Zed.app"
export VISUAL="open -a Zed.app"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bun completions
[ -s "/Users/egor/.bun/_bun" ] && source "/Users/egor/.bun/_bun"

eval $(thefuck --alias)
eval "$(starship init zsh)"

# ALIASES
alias python="python3"
alias pip="pip3"
alias py="python3"
alias py3="python3"
alias code="zed"
alias edit="zed"
alias clr="clear"
alias browser="open -a Google\ Chrome.app"
alias lg="lazygit"
alias fck="fuck"
alias shit="fuck"' > $HOME/.zshrc

defaults write com.apple.dock autohide-delay -float 0; killall Dock
# defaults delete com.apple.dock autohide-delay; killall Dock

brew install node zsh git zsh-autosuggestions zsh-syntax-highlighting lazygit bat thefuck yazi openssl python neovim
brew install --cask google-chrome iterm2 zed cloudflare-warp mos spotify telegram qbittorrent balenaetcher appcleaner shottr uninstallpkg raycast
brew tap teamookla/speedtest
brew update
brew install speedtest
brew cleanup

npm install -g npm unzip bun ipherr wutdepc tydid pompom

# ~/.config/zed/settings.json
echo '{
  "assistant": {
    "default_model": {
      "provider": "zed.dev",
      "model": "claude-3-7-sonnet-latest"
    },
    "version": "2"
  },
  "features": {
    "edit_prediction_provider": "zed"
  },
  "telemetry": {
    "diagnostics": false,
    "metrics": false
  },
  "editor": {
    "insertSpaces": false,
    "useTabs": true,
    "wordWrap": "on",
    "autoClosingBrackets": "never",
    "autoClosingQuotes": "never",
  },
  "autosave": "on_focus_change",
  "insertSpaces": false,
  "useTabs": true,
  "ui_font_size": 16,
  "buffer_font_size": 16,
  "format_on_save": "on",
  "theme": {
    "mode": "system",
    "light": "One Light",
    "dark": "macOS Classic Dark"
  }
}' > ~/.config/zed/settings.json
