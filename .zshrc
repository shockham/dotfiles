# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="shockham"

# Set location of custom dir
ZSH_CUSTOM="$HOME/.zsh_custom"

# loaded plugins
plugins=(git tmux pip cargo python pylint docker docker-compose zsh-autosuggestions yarn)

# User configuration

# additional completions
fpath=(/usr/local/share/zsh-completions $fpath)

# alias'
alias tmux='tmux -2'
alias irssi='TERM=screen irssi'
alias clear='clear && dirs -c'
alias c='cargo'
alias e='exa'
alias b='bat'
alias cl='clear'
alias dc='docker-compose'
alias dps='docker ps'
alias dk='docker'


source $ZSH/oh-my-zsh.sh
source ~/.nix-profile/etc/profile.d/nix.sh

# default editor is vim
export EDITOR='vim'

# some settings for android
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export ANDROID_HOME="/usr/lib/android-sdk/"
export NDK_HOME="/opt/android-ndk/"

# set keyboard to us
setxkbmap -layout "us"

# adding to PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/shk_scripts:$HOME/.cargo/bin:/usr/local/sbin:$HOME/.local/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:$HOME/Code/other/flutter/bin:$PATH"
