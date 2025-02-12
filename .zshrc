export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="eastwood"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


# custom alias
alias c='clear'
alias ls='lsd --icon never'
alias ll='ls --icon auto -la'
alias vi='nvim'

eval "$(zoxide init zsh)"
