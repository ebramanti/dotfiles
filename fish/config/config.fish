# gvm
gvm use default > /dev/null
set -x GOPATH $HOME/go
set -x PATH $HOME/go/bin $PATH

# rbenv
set PATH $HOME/.rbenv/bin $PATH
status --is-interactive; and . (rbenv init -|psub)

# pyenv
set -x PATH "$HOME/.pyenv/bin" $PATH
status --is-interactive; and . (pyenv init -|psub)
