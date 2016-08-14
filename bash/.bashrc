export GOROOT=$HOME/.gvm/gos/$(gvm alias list | grep -Eow 'go[0-9\.]+')
export GOPATH=$HOME/.gvm/pkgsets/$(gvm alias list | grep -Eow 'go[0-9\.]+')/global
export PATH=$PATH:$GOROOT/bin
