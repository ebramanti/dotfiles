DOTFILES=$HOME/.dotfiles
OHMYZSH=$HOME/.oh-my-zsh

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
brew tap homebrew/cask-versions
brew bundle --file=$DOTFILES/brew/Brewfile
echo "---> Brew done"

echo "---> Post brew"
/usr/local/opt/fzf/install --all
echo "---> Post brew done"

echo ""
echo "---> Git"
ln -s $DOTFILES/git/gitconfig $HOME/.gitconfig
ln -s $DOTFILES/git/gitignore_global $HOME/.gitignore_global
echo "---> Git done"

echo ""
echo "---> Bash"
ln -s $DOTFILES/bash/.bashrc $HOME/.bashrc
echo "---> Bash done"

echo ""
echo "---> Ruby (rbenv)"
bash $DOTFILES/ruby/install.sh
echo "---> Ruby done"

echo ""
echo "---> Python (pyenv)"
bash $DOTFILES/python/install.sh
echo "---> Python done"

echo ""
echo "---> Go (gvm)"
bash $DOTFILES/go/install.sh
echo "---> Go done"

echo ""
echo "---> Node (nvm)"
bash $DOTFILES/node/install.sh
echo "---> Node done"

echo ""
echo "---> Zsh"
ln -s $DOTFILES/zsh/.zshrc $HOME/.zshrc
touch $DOTFILES/zsh/local.zsh
ln -s $DOTFILES/zsh/local.zsh $HOME/local.zsh
echo "---> Zsh done"

echo ""
echo "---> Post Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/lukechilds/zsh-nvm $OHMYZSH/custom/plugins/zsh-nvm
echo "---> Post Zsh done"
