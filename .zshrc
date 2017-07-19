# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="lambda"

# loaded plugins
plugins=(git tmux pip)

# User configuration

# additional completions
fpath=(/usr/local/share/zsh-completions $fpath)

# alias tmux so that it opens with 256 colours
alias tmux='tmux -2'
# alias so doesn't refresh on half of the window
alias irssi='TERM=screen irssi'

# adding to PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/shk_scripts:$HOME/.cargo/bin:$HOME/Library/Haskell/bin:/Developer/NVIDIA/CUDA-7.5/bin:/usr/local/sbin:/usr/local/heroku/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# default editor is vim
export EDITOR='vim'
