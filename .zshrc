# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="lambda"

# loaded plugins
plugins=(git tmux pip sudo)

# User configuration

# alias tmux so that it opens with 256 colours
alias tmux='tmux -2'

# adding to PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/shk_scripts:$HOME/.multirust/toolchains/nightly/cargo/bin:$HOME/Library/Haskell/bin:/Developer/NVIDIA/CUDA-7.5/bin:/usr/local/sbin:/usr/local/heroku/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# default editor is vim
export EDITOR='vim'

# some settings for android
export ANDROID_NDK_DIR="/opt/android-ndk/"

# add rust src dir
export RUST_SRC_PATH=$HOME/Code/rust/src/
