DOTFILES=$HOME/.dotfiles

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
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle --file=$DOTFILES/brew/Brewfile
touch $DOTFILES/brew/local/Brewfile
echo "---> Brew done"

echo "---> Post brew"
/opt/homebrew/opt/fzf/install --all
echo "---> Post brew done"

echo ""
echo "---> Git"
ln -s $DOTFILES/git/gitconfig $HOME/.gitconfig
ln -s $DOTFILES/git/gitignore_global $HOME/.gitignore_global
echo "---> Git done"

echo ""
echo "---> Bash"
ln -sf $DOTFILES/bash/.bashrc $HOME/.bashrc
ln -sf $DOTFILES/bash/.bash_profile $HOME/.bash_profile
echo "---> Bash done"

echo ""
echo "---> Mise"
mkdir -p $HOME/.config/mise
ln -sf $DOTFILES/mise/config.toml $HOME/.config/mise/config.toml
mise trust $DOTFILES/mise/config.toml
# Create local override if it doesn't exist
if [ ! -f $DOTFILES/mise/local.toml ]; then
  cat > $DOTFILES/mise/local.toml << 'EOF'
# Pin specific tool versions for this machine.
# These override the defaults in config.toml.
# [tools]
# node = "22.0.0"
# python = "3.12.0"
EOF
fi
ln -sf $DOTFILES/mise/local.toml $HOME/.config/mise/local.toml
mise install
echo "---> Mise done"

echo ""
echo "---> Claude"
# Native installer (auto-updates after install)
if ! command -v claude >/dev/null 2>&1; then
  curl -fsSL https://claude.ai/install.sh | bash
fi
# Symlink shared config
mkdir -p $HOME/.claude
ln -sf $DOTFILES/claude/settings.json $HOME/.claude/settings.json
# Create local override if it doesn't exist
if [ ! -f $DOTFILES/claude/settings.local.json ]; then
  echo '{}' > $DOTFILES/claude/settings.local.json
fi
ln -sf $DOTFILES/claude/settings.local.json $HOME/.claude/settings.local.json
echo "---> Claude done"

echo ""
echo "---> Ghostty"
mkdir -p $HOME/.config/ghostty
ln -sf $DOTFILES/ghostty/config $HOME/.config/ghostty/config
echo "---> Ghostty done"

echo ""
echo "---> Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -sf $DOTFILES/zsh/.zshrc $HOME/.zshrc
ln -sf $DOTFILES/zsh/.zprofile $HOME/.zprofile
touch $DOTFILES/zsh/local.zsh
ln -sf $DOTFILES/zsh/local.zsh $HOME/local.zsh
echo "---> Zsh done"
