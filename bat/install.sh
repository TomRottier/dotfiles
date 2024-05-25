if [ ! -f /usr/bin/batcat ]; then
	echo -e "\e[36minstalling bat\e[0m"
	apt install bat
fi
