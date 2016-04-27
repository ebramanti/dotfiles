set fisher_home ~/.local/share/fish
set fisher_config ~/.config/fish
source $fisher_home/config.fish

# rbenv
set PATH $HOME/.rbenv/bin $PATH
. (rbenv init -|psub)

# pyenv
set -x PATH "$HOME/.pyenv/bin" $PATH
status --is-interactive; and . (pyenv init -|psub)

# Fisherman fix for fish version < 2.3.0.
for file in ~/.config/fish/conf.d/*.fish
    source $file
end

# TODO: Figure out a better solution
nvm use default > /dev/null
