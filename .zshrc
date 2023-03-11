# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="shockham"

# Set location of custom dir
ZSH_CUSTOM="$HOME/.zsh_custom"

# loaded plugins
plugins=(git tmux pip python pylint docker docker-compose zsh-autosuggestions yarn ripgrep)

# User configuration

# additional completions
#fpath=(/usr/local/share/zsh-completions $fpath)

# alias'
alias tmux='tmux -2'
alias irssi='TERM=screen irssi'
alias clear='clear && dirs -c'
alias c='mold -run cargo'
alias e='exa --color=never'
alias b='bat'
alias cl='clear'

alias dk='docker'
alias dps='dk ps'

alias dc='docker-compose'
alias dcu='dc up -d'
alias dcl='dc logs'
alias dcr='dc run --rm'
alias dcd='dc down'

alias gpo='git push origin HEAD'
alias gpull='git pull origin HEAD'
alias gpnv='git push --no-verify origin HEAD'

alias kpl='keepassxc-cli ls $KPXC_DB /'
alias kpg='keepassxc-cli show -a UserName -a Password $KPXC_DB'

alias work='pushd ~/Code/work'

alias am='alsamixer -g'


source $ZSH/oh-my-zsh.sh

# default editor is vim
export EDITOR='vim'

# some settings for android
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export ANDROID_SDK_ROOT="/home/android-sdk/"
export ANDROID_NDK_ROOT="/home/android-ndk/"

# rust build caching
export RUSTC_WRAPPER=sccache

# base PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/games"
# home
export PATH="$PATH:$HOME/.local/bin:$HOME/shk_scripts:$HOME/.cargo/bin"
# android
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/tools/bin"
# krew
export PATH="$PATH:$HOME/.krew/bin"
# deno
export DENO_INSTALL="/home/sam/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
# go
export PATH="$PATH:$HOME/go/bin"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
