# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="lambda"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux pip sudo)

# User configuration

# alias tmux so that it opens with 256 colours
alias tmux='tmux -2'

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/shk_scripts:$HOME/.multirust/toolchains/nightly/cargo/bin:$HOME/Library/Haskell/bin:/Developer/NVIDIA/CUDA-7.5/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-7.5/lib:$DYLD_LIBRARY_PATH

source $ZSH/oh-my-zsh.sh

# default editor is vim
export EDITOR='vim'

# some settings for android
export ANDROID_NDK_DIR="/opt/android-ndk/"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# add rust src dir
export RUST_SRC_PATH=$HOME/Code/rust/src/
