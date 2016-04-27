#!/bin/sh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

export NVM_DIR="/Users/Edward/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

nvm install node
