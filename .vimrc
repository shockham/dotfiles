set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-leiningen'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'jdonaldson/vaxe'
Plugin 'wting/rust.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'phildawes/racer'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on  


set backspace=2
syntax on
set expandtab
set tabstop=4
set shiftwidth=4
set incsearch
set number
set ai
set mouse=a
set autowrite
set t_Co=256
set term=xterm-256color
colorscheme fruity
let g:ycm_autoclose_preview_window_after_completion=1
set hidden
let g:racer_cmd = "/Users/shockham/.vim/bundle/racer/target/release/racer"
let $RUST_SRC_PATH="/Users/shockham/Code/rust/src/"
let g:airline_powerline_fonts = 1
