if [ ! -f /opt/nvim-linux64/bin/nvim ]; then
	echo -e "\e[36minstalling neovim\e[0m"
	apt install neovim
fi
