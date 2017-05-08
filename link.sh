DOTFILE_PATH=~/Code/dotfiles

# link main dotfiles
ln -sf $DOTFILE_PATH/.vimrc ~/.vimrc
ln -sf $DOTFILE_PATH/.tmux.conf ~/.tmux.conf
ln -sf $DOTFILE_PATH/.zshrc ~/.zshrc 
ln -sf $DOTFILE_PATH/scripts ~/shk_scripts
ln -sf $DOTFILE_PATH/.alacritty.yml ~/.alacritty.yml

# newsbeuter
mkdir -p ~/.newsbeuter
ln -sf $DOTFILE_PATH/.newsbeuter/urls ~/.newsbeuter/urls 
ln -sf $DOTFILE_PATH/.newsbeuter/config ~/.newsbeuter/config 

# make some directories for vim
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/swap
mkdir -p ~/.vim/undo
