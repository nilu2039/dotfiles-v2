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

export PATH="/usr/local/go/bin:$PATH"
export PATH="/Users/nilanjan/zig:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-21.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# custom alias
alias c='clear && tmux clear-history'
alias ls='lsd --icon never'
alias ll='ls --icon auto -la'
alias vi='nvim'
alias e="exit"

eval "$(zoxide init zsh)"
. "/Users/nilanjan/.deno/env"

# bun completions
[ -s "/Users/nilanjan/.bun/_bun" ] && source "/Users/nilanjan/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

. "$HOME/.local/bin/env"

# Added by Antigravity
export PATH="/Users/nilanjan/.antigravity/antigravity/bin:$PATH"
