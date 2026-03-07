include() {
  [[ -f "$1" ]] && source "$1"
}

# Initialize zsh-autosuggestions from Brew install
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git fzf)

source $ZSH/oh-my-zsh.sh

# local bin
export PATH="$HOME/.local/bin:$PATH"

# mise
eval "$(mise activate zsh)"

# Ghostty shell integration
if [[ -n "$GHOSTTY_RESOURCES_DIR" ]]; then
  source "$GHOSTTY_RESOURCES_DIR/shell-integration/zsh/ghostty-integration"
fi

include "$HOME/local.zsh"
