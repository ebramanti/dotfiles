import os

source_nvm = '[ -s \"$NVM_DIR/nvm.sh\" ] && . \"$NVM_DIR/nvm.sh\"'

packages = [
    'mocha',
    'gulp',
    'jade',
    'eslint',
    'eslint-plugin-react',
    'eslint-config-airbnb',
    'react-native-cli',
    'react-native',
    'coffee-script',
    'kobrascript'
]

os.system('%s && npm install -g %s' % (source_nvm, ' '.join(packages)))
