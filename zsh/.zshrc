include() {
  [[ -f "$1" ]] && source "$1"
}

# Initialize zsh-autosuggestions from Brew install
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# zsh-nvm settings
# See https://github.com/lukechilds/zsh-nvm/issues/24#issuecomment-279633005
# for performance considerations
if ! [ -f .nvmrc ]; then export NVM_LAZY_LOAD=true; fi
export NVM_AUTO_USE=true

plugins=(git fzf zsh-nvm)

source $ZSH/oh-my-zsh.sh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Go
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"

# goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

# Deno
export DENO_ROOT="$HOME/.deno"
export PATH="$DENO_ROOT/bin/deno:$PATH"

# rustup
export CARGO_ROOT="$HOME/.cargo"
export PATH="$CARGO_ROOT/bin:$PATH"

include "$HOME/local.zsh"
