if [ ! -f /opt/nvim-linux64/bin/nvim ]; then
	echo -e "\e[36minstalling neovim\e[0m"
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
	sudo rm -rf /opt/nvim
	sudo tar -C /opt -xzf nvim-linux64.tar.gz
fi
