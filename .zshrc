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

# some settings for android
export ANDROID_NDK_DIR="/opt/android-ndk/"

# add rust src dir
export RUST_SRC_PATH=$HOME/.multirust/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src

# cuda exports
export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
export PATH="$CUDA_HOME/bin:$PATH"

# emscripten
source $HOME/Code/emsdk_portable/emsdk_env.sh >/dev/null
