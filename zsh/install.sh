# install zsh
if [ ! -f "/usr/bin/zsh" ]; then
    echo -e "\e[36minstalling zsh\e[0m"
    apt install zsh
    # make it the default shell
    chsh -s $(which zsh)
fi

# install oh my zsh
if [ ! -d "${HOME}/.oh-my-zsh" ]; then
	echo -e "\e[36minstalling oh-my-zsh\e[0m"
	RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# install plugins
if [ ! -d  "${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions" ]; then
	echo -e "\e[36minstalling zsh-suggestions\e[0m"
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
	echo -e "\e[36minstalling zsh-syntax-highlighting\e[0m"
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

# install powerlevel10k theme
if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then
	echo -e "\e[36minstalling powerlevel10k\e[0m"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

# # install fzf
# if [ "$(which fzf >> /dev/null)" -ne 0 ]; then
# 	sudo apt install fzf
# fi

# overwrite config files
# cp dotfiles/zsh/.zshrc $HOME
# cp dotfiles/zsh/.p10k.zsh $HOME
#
# source .zshrc
# zsh
