# Forked from: https://github.com/dvcrn/dotfiles/blob/master/install.sh
echo "Installing your Dotfiles!"
echo ""

# Brew
echo "---> Preinstall"
xcode-select --install
echo "---> Preinstall done"

# Brew
echo ""
echo "---> Brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap Homebrew/bundle
brew tap caskroom/cask
brew tap caskroom/versions

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
echo "---> Bash"
ln -s ~/.dotfiles/bash/.bashrc ~/.bashrc
echo "---> Bash done"

echo ""
echo "---> Ruby (rbenv)"
bash ~/.dotfiles/ruby/rbenv/install.sh
echo "---> Ruby done"

echo ""
echo "---> Python (pyenv)"
bash ~/.dotfiles/python/pyenv/install.sh
echo "---> Python done"

echo ""
echo "---> Go (gvm)"
bash ~/.dotfiles/go/gvm.sh
echo "---> Go done"

echo ""
echo "---> Node"
bash ~/.dotfiles/node/nvm/install.sh
python ~/.dotfiles/node/npm/install.py
echo "---> Node done"

echo ""
echo "---> Fish"
mkdir -p ~/.config/
ln -s ~/.dotfiles/fish/config ~/.config/fish
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
echo "---> Fish done"

echo ""
echo "---> Zsh"
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
echo "---> Zsh done"
