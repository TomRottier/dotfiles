if [ ! -d ./juliaup ]; then
	echo -e "\e[36minstalling julia\e[0m"
	curl -fsSL https://install.julialang.org | sh
fi
