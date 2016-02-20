#!/bin/bash

DOTFILE_PATH=~/Code/dotfiles
ln -sf $DOTFILE_PATH/.vimrc ~/.vimrc
ln -sf $DOTFILE_PATH/.tmux.conf ~/.tmux.conf
ln -sf $DOTFILE_PATH/.zshrc ~/.zshrc 
ln -sf $DOTFILE_PATH/.newsbeuter/urls ~/.newsbeuter/urls 
ln -sf $DOTFILE_PATH/.newsbeuter/config ~/.newsbeuter/config 
ln -sf $DOTFILE_PATH/scripts ~/shk_scripts
