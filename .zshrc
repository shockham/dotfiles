# User configuration

# Sets color variable such as $fg, $bg, $color and $reset_color
autoload -U colors && colors
# Expand variables and commands in PROMPT variables
setopt prompt_subst

# theme
set_prompt() {
    local git_branch_name=$(git symbolic-ref --short HEAD 2> /dev/null)
    if [[ -z $git_branch_name ]]; then
        PROMPT="■ %~/ "
        return
    fi

    local git_status=$(git status --porcelain)
    local git_dirty="*"
    if [[ -z $git_status ]]; then
        git_dirty=""
    fi

    PROMPT="■ %~/ %F{#000000}%K{#ffffff}${git_branch_name}${git_dirty}%k%f "
}
precmd_functions+=(set_prompt)

# Changing/making/removing directory
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

# auto suggestions
source ~/.zsh_custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# alias'
alias tmux='tmux -2'
alias irssi='TERM=screen irssi'
alias clear='clear && dirs -c'
alias c='cargo'
alias e='exa --color=never'
alias b='bat'
alias cl='clear'
alias ls='ls --color=tty'
alias l='ls -lah'

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
alias gd='git diff'
ait () {
    git add --all
    git commit -m "$1"
}
gcoo () {
    git checkout $1
    git pull origin $1
}

alias kpl='keepassxc-cli ls $KPXC_DB /'
alias kpg='keepassxc-cli show -a UserName -a Password $KPXC_DB'

alias work='pushd ~/Code/work'

alias am='alsamixer -g'

alias netup='nmcli con up'
alias netls='nmcli d wifi'
alias netcon='nmcli d wifi connect'
alias netscan='nmcli d wifi rescan'

alias streams='watch --color -n 600 "witcht < ~/.witcht"'
alias vod='witcht --vod'
alias mpa='mpv --vid=no'
wit () {
    mpv --ao=pipewire `witcht $1`
}
vwit () {
    cvlc --no-video-title-show `witcht $1`
}

hex2col () {
    perl -e 'foreach $a(@ARGV){print "\e[48:2::".join(":",unpack("C*",pack("H*",$a)))."m     \n     \n     \n\e[49m"};print "\n"' "$1"
}

# default editor is vim
export EDITOR='vim'

# base PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/games"
# home
export PATH="$PATH:$HOME/.local/bin:$HOME/shk_scripts"
# go
export PATH="$PATH:$HOME/go/bin"
# rust
export PATH="$PATH:$HOME/.cargo/bin"
