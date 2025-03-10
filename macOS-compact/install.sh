#!/bin/zsh
echo "The following things will be installed & updated:
- zsh with Oh My Zsh in Powerlevel10k theme
- zsh plugins: git, zsh-syntax-highlighting, zsh-autosuggestions
- homebrew
- node + npm
- python
- bat, openssl
- iterm2
- nvim
- raycast
- google chrome
- mos
- spotify
- telegram
- balenaetcher
- appcleaner
- uninstallpkg
- shottr
- unzip
- ipherr
- wutdepc
- tydid
- pompom
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

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# EXPORTS
export PATH="/opt/homebrew/bin:$PATH"

eval "$(starship init zsh)"

# ALIASES
alias python="python3"
alias pip="pip3"
alias py="python3"
alias py3="python3"
alias clr="clear"
alias browser="open -a Google\ Chrome.app"' > $HOME/.zshrc

defaults write com.apple.dock autohide-delay -float 0; killall Dock
# defaults delete com.apple.dock autohide-delay; killall Dock

brew install node zsh git zsh-autosuggestions zsh-syntax-highlighting bat openssl python nvim
brew install --cask google-chrome iterm2 cloudflare-warp mos spotify telegram balenaetcher appcleaner shottr uninstallpkg raycast
brew cleanup

npm install -g npm unzip bun ipherr wutdepc tydid pompom

echo "Finished Successfully!"
