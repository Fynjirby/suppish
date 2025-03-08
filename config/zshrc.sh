export ZSH="$HOME/.oh-my-zsh"

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
eval "$(starship init zsh)"

# ALIASES
alias lpreset="defaults write com.apple.dock ResetLaunchPad -bool TRUE; killall Dock"
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
alias shit="fuck"
alias td="tydid"
