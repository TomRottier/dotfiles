#!/usr/bin/bash

DOTFILE_DIR=./dotfiles

# install zsh and plugins
source ${DOTFILE_DIR}/zsh/install.sh

# install neovim
source ${DOTFILE_DIR}/nvim/install.sh

# install fzf
source ${DOTFILE_DIR}/fzf/install.sh
# key bindings and completions in .zshrc

# install bat
source ${DOTFILE_DIR}/bat/install.sh


# link to config files
[ -f ./.zshrc ] && rm ./.zshrc
ln -s ${DOTFILE_DIR}/zsh/.zshrc ./.zshrc
[ -f ./.p10k.zsh ] && rm ./.p10k.zsh
ln -s ${DOTFILE_DIR}/zsh/.p10k.zsh ./.p10k.zsh
[ ! -d ./.config/nvim ] && mkdir -p ./.config/nvim/
ln -s ${DOTFILE_DIR}/nvim/init.lua ./.config/nvim/init.lua

# symlinks
[ ! -d ./.local/bin/ ] && mkdir -p ./.local/bin
ln -s /usr/bin/batcat ./.local/bin/bat
ln -s /usr/bin/python3 ./.local/bin/python

zsh
