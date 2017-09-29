# lower case platform string
platform="$(uname | tr '[:upper:]' '[:lower:]')"

# install main tools
if [[ $platform == 'darwin' ]]; then
    brew install tmux vim newsbeuter
elif [[ $platform == 'linux' ]]; then
    distro="$(lsb_release -i -s | tr '[:upper:]' '[:lower:]')"
    if [[ $distro == 'fedora' ]]; then
        sudo dnf install tmux vim newsbeuter
    else
        sudo apt-get install tmux vim newsbeuter
    fi
fi

# install oh-my-zsh, vundle and tpm
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

./link.sh
