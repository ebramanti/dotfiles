import os

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

os.system('npm install -g %s' % ' '.join(packages))
