DOTFILE_PATH=$(pwd)

# link main dotfiles
ln -sf $DOTFILE_PATH/.vimrc ~/.vimrc
ln -sf $DOTFILE_PATH/.tmux.conf ~/.tmux.conf
ln -sf $DOTFILE_PATH/.zshrc ~/.zshrc
ln -sf $DOTFILE_PATH/.zsh_custom ~/.zsh_custom
ln -sf $DOTFILE_PATH/scripts ~/shk_scripts
ln -sf $DOTFILE_PATH/.alacritty.yml ~/.alacritty.yml
ln -sf $DOTFILE_PATH/.profile ~/.profile

# newsbeuter
mkdir -p ~/.newsbeuter
mkdir -p ~/.newsboat
ln -sf $DOTFILE_PATH/.newsbeuter/urls ~/.newsbeuter/urls
ln -sf $DOTFILE_PATH/.newsbeuter/config ~/.newsbeuter/config
ln -sf $DOTFILE_PATH/.newsbeuter/urls ~/.newsboat/urls
ln -sf $DOTFILE_PATH/.newsbeuter/config ~/.newsboat/config

# make some directories for vim
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/swap
mkdir -p ~/.vim/undo

# install vim plugins
vim +PluginInstall +qall
# reload tmux conf
tmux source ~/.tmux.conf

# mpd
mkdir -p ~/.config/mpd
ln -sf $DOTFILE_PATH/mpd.conf ~/.config/mpd/mpd.conf

# i3
ln -sf $DOTFILE_PATH/i3 ~/.config/

# irssi
ln -sf $DOTFILE_PATH/.irssi ~

# create file for SQHELL conns
touch ~/.db_connections.vim
