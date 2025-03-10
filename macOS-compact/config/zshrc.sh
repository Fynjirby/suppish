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
