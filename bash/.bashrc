eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(mise activate bash)"
export PATH="$HOME/.herd/bin:$PATH"
[ -f $HOME/.fzf.bash ] && source $HOME/.fzf.bash
