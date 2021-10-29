# Homebrew
# load in zprofile for as early as possible initialization of Brew deps
eval "$(/opt/homebrew/bin/brew shellenv)"

# rbenv
# load in zprofile for non-interactive shells
# See: https://github.com/castwide/vscode-solargraph/issues/108#issuecomment-487359460
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Solana
export PATH="/Users/edward/.local/share/solana/install/active_release/bin:$PATH"
