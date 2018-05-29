# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="shockham"

# Set location of custom dir
ZSH_CUSTOM="~/.zsh_custom"

# loaded plugins
plugins=(git tmux pip)

# User configuration

# additional completions
fpath=(/usr/local/share/zsh-completions $fpath)

# alias tmux so that it opens with 256 colours
alias tmux='tmux -2'
# alias so doesn't refresh on half of the window
alias irssi='TERM=screen irssi'
# clear push dirs on clear
alias clear='clear && dirs -c'
# cargo shortcut
alias c='cargo'

# adding to PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/shk_scripts:$HOME/.cargo/bin:$HOME/Library/Haskell/bin:/Developer/NVIDIA/CUDA-7.5/bin:/usr/local/sbin:/usr/local/heroku/bin:$PATH"

source $ZSH/oh-my-zsh.sh
source ~/.nix-profile/etc/profile.d/nix.sh

# default editor is vim
export EDITOR='vim'

# some settings for android
export JAVA_HOME="/usr/lib/jvm/java-openjdk"
export ANDROID_HOME="/opt/android-sdk/"
export NDK_HOME="/opt/android-ndk/"
export PATH=${PATH}:/opt/android-sdk/platform-tools:/opt/android-sdk/tools

# set keyboard to us
setxkbmap -layout "us"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
