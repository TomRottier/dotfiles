# powerlevel10k instant prompt stuff
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# set theme
ZSH_THEME="powerlevel10k/powerlevel10k"


# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# plugins
plugins=(git zsh-autosuggestions web-search zsh-syntax-highlighting)


source $ZSH/oh-my-zsh.sh

# User configuration

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/home/tom/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# add home binaries to path, mostly symlinks
path+=('/home/tom/.local/bin')

# use windows browser from wsl
export BROWSER=wslview

# add neovim to path
export PATH="$PATH:/opt/nvim-linux64/bin"

