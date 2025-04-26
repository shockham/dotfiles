DOTFILE_PATH=$(pwd)

# link main dotfiles
ln -sf $DOTFILE_PATH/.vimrc ~/.vimrc
ln -sf $DOTFILE_PATH/.tmux.conf ~/.tmux.conf
ln -sf $DOTFILE_PATH/.zshrc ~/.zshrc
ln -sf $DOTFILE_PATH/.zsh_custom ~/.zsh_custom
ln -sf $DOTFILE_PATH/scripts ~/shk_scripts
ln -sf $DOTFILE_PATH/.alacritty.yml ~/.alacritty.yml

# newsbeuter
mkdir -p ~/.newsboat
ln -sf $DOTFILE_PATH/.newsbeuter/urls ~/.newsboat/urls
ln -sf $DOTFILE_PATH/.newsbeuter/config ~/.newsboat/config

# make some directories for vim
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/swap
mkdir -p ~/.vim/undo

# reload tmux conf
# tmux source ~/.tmux.conf

# i3
# ln -sf $DOTFILE_PATH/i3 ~/.config/

# sway
# ln -sf $DOTFILE_PATH/sway ~/.config/

# rofi
# ln -sf $DOTFILE_PATH/rofi ~/.config/

# rio
# ln -sf $DOTFILE_PATH/rio ~/.config/

# irssi
# ln -sf $DOTFILE_PATH/.irssi ~

# cmus themes
ln -sf $DOTFILE_PATH/.cmus ~
