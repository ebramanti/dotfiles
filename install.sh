# Forked from: https://github.com/dvcrn/dotfiles/blob/master/install.sh
echo "Installing your Dotfiles!"
echo ""

# Brew
echo ""
echo "---> Brew"
brew tap Homebrew/bundle
cd ~/.dotfiles/brew/ && brew bundle
cd ~/.dotfiles/
echo "---> Brew done"

echo "---> Post brew"
/usr/local/opt/fzf/install --all
echo "---> Post brew done"

echo ""
echo "---> Git"
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/gitignore_global ~/.gitignore_global
echo "---> Git done"

echo ""
echo "---> NPM"
python ~/.dotfiles/npm/install.py
echo "---> NPM done"

echo ""
echo "---> fish"
mkdir -p ~/.config/
ln -s ~/.dotfiles/fisherman ~/.config/fisherman
echo "---> fish done"
