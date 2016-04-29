set -gx OMF_PATH "/Users/Edward/.local/share/omf"
set -gx OMF_CONFIG "/Users/Edward/.dotfiles/fish/omf"
source $OMF_PATH/init.fish

# gvm
gvm use default > /dev/null

# rbenv
set PATH $HOME/.rbenv/bin $PATH
status --is-interactive; and . (rbenv init -|psub)

# pyenv
set -x PATH "$HOME/.pyenv/bin" $PATH
status --is-interactive; and . (pyenv init -|psub)

if status --is-interactive
  nvm use default > /dev/null
end
