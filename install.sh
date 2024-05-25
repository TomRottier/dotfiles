!#/usr/bin/env bash

root=${HOME}/dotfiles

# install zsh and plugins
source ${root}/zsh/install.sh

# install neovim
source ${root}/nvim/install.sh

# install fzf
source ${root}/fzf
# key bindings and completions in .zshrc

# install bat
source install ${root}/bat


# link to config files
ln -s ${root}/zsh/.zshrc ~/.zshrc
ln -s ${root}/zsh/.p10k.zsh ~/.p10k.zsh
ln -s ${root}/nvim/init.lua ~/.config/nvim/init.lua

# symlinks
[ ! -d "~/.local/bin/ ] && mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
ln -s /usr/bin/python3 ~/.local/bin/python

zsh
