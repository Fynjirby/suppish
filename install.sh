#!/bin/zsh
echo "The following things will be installed & updated:
- zsh with Oh My Zsh in Powerlevel10k theme
- zsh plugins: git, zsh-syntax-highlighting, zsh-autosuggestions, brew
- homebrew
- node.js + npm
- bun.js
- python
- lazygit, bat, thefuck, yazi, openssl
- ghostty & zed
- brave browser
- cloudflare-warp
- mos
- spotify
- telegram
- qbittorrent
- balenaetcher
- appcleaner
- shottr
- unzip
- ipherr
- wutdepc
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
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$HOME/.oh-my-zsh/themes/powerlevel10k"

echo 'export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

plugins=(git zsh-syntax-highlighting zsh-autosuggestions brew)

source $ZSH/oh-my-zsh.sh
source $HOME/.oh-my-zsh/themes/powerlevel10k/powerlevel10k.zsh-theme

# EXPORTS
export PATH="/opt/homebrew/bin:$PATH"
export EDITOR="open -a Zed.app"
export VISUAL="open -a Zed.app"
export TERMINAL="open -a Ghostty.app"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bun completions
[ -s "/Users/egor/.bun/_bun" ] && source "/Users/egor/.bun/_bun"

eval $(thefuck --alias)

# ALIASES
alias lpreset="defaults write com.apple.dock ResetLaunchPad -bool TRUE; killall Dock"
alias python="python3"
alias pip="pip3"
alias py="python3"
alias py3="python3"
alias code="zed"
alias edit="zed"
alias clr="clear"
alias browser="open -a Brave\ Browser"
' > $HOME/.zshrc

defaults write com.apple.dock autohide-delay -float 0; killall Dock
# defaults delete com.apple.dock autohide-delay; killall Dock

brew install node zsh git zsh-autosuggestions zsh-syntax-highlighting lazygit bat thefuck yazi openssl python
brew install --cask brave-browser ghostty zed cloudflare-warp mos spotify telegram qbittorrent balenaetcher appcleaner shottr
brew cleanup

npm install -g npm unzip bun ipherr wutdepc

# ~/.config/zed/settings.json
echo '{
  "assistant": {
    "default_model": {
      "provider": "openai",
      "model": "gpt-4o-mini"
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
    "terminal": "ghostty"
  },
  "shell": {
    "program": "open -a Ghostty"
  },
  "autosave": "on_focus_change",
  "insertSpaces": false,
  "useTabs": true,
  "ui_font_size": 16,
  "buffer_font_size": 16,
  "theme": {
    "mode": "system",
    "light": "One Light",
    "dark": "One Dark"
  }
}' > ~/.config/zed/settings.json
