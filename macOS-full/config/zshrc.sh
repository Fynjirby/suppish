echo 'export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions brew)

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
alias shit="fuck"' > ~/.zshrc
