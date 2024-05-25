if [ ! -f /usr/bin/fzf ]; then
	echo -e "\e[36minstalling fzf\e[0m"
	apt install fzf
fi
