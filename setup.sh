# lower case platform string
platform="$(uname | tr '[:upper:]' '[:lower:]')"

# install main tools
if [[ $platform == 'darwin' ]]; then
    brew install tmux vim newsbeuter
fi

# install oh-my-zsh, vundle and tpm
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

./link.sh
