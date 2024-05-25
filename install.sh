!#/usr/bin/ 

root=./dotfiles

# install zsh and plugins
source ${root}/zsh/install.sh

# install neovim
source ${root}/nvim/install.sh

# install fzf
source ${root}/fzf/install.sh
# key bindings and completions in .zshrc

# install bat
source ${root}/bat/install.sh


# link to config files
[ -f ./.zshrc ] && rm ./.zshrc
ln -s ${root}/zsh/.zshrc ./.zshrc
[ -f ./.p10k.zsh ] && rm ./.p10k.zsh
ln -s ${root}/zsh/.p10k.zsh ./.p10k.zsh
[ ! -d ./.config/nvim ] && mkdir -p ./.config/nvim/
ln -s ${root}/nvim/init.lua ./.config/nvim/init.lua

# symlinks
[ ! -d ./.local/bin/ ] && mkdir -p ./.local/bin
ln -s /usr/bin/batcat ./.local/bin/bat
ln -s /usr/bin/python3 ./.local/bin/python

zsh
