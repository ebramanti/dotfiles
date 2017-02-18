# nvm
function use
    nvm use (cat .nvmrc)
end

nvm use 7

# gvm
function gvm
  bass source /Users/Edward/.gvm/scripts/gvm ';' gvm $argv
end
gvm use default > /dev/null

# rbenv
set PATH $HOME/.rbenv/bin $PATH
status --is-interactive; and . (rbenv init -|psub)

# pyenv
set -x PATH "$HOME/.pyenv/bin" $PATH
status --is-interactive; and . (pyenv init -|psub)
