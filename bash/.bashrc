export GOROOT=$HOME/.gvm/gos/$(gvm alias list | grep -Eow 'go[0-9\.]+')
export GOPATH=$HOME/.gvm/pkgsets/$(gvm alias list | grep -Eow 'go[0-9\.]+')/global
export PATH=$PATH:$GOROOT/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
