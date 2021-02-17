#!/bin/zsh
# Brew Install Commands
# Will install the following:
# iterm2, nvim, fzf, neofetch
brew install --cask iterm2 neovim ctags neofetch fzf
sudo $(brew --prefix)/opt/fzf/install

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerline fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
./fonts/install.sh
# clean-up a bit
rm -rf fonts

# Copy vim dotfiles
cp .vimrc ~/.vimrc
mkdir -p ~/.config/nvim/
cp init.vim ~/.config/nvim/init.vim

echo "Don't forget to configure iterm with a powerline font, change the ZSH_THEME in .zshrc to agnoster and run PlugInstall in nvim"
