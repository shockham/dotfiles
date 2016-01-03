set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" General
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'jpalardy/vim-slime'

" Language specific
Plugin 'wting/rust.vim'
Plugin 'phildawes/racer'

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
set background=dark
set t_Co=256
colorscheme solarized
set hidden

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "active_filetypes": [],
    \ "passive_filetypes": ["haxe", "html"] }

"  youcompleteme 
let g:ycm_autoclose_preview_window_after_completion=1

" racer rust auto complete
let g:racer_cmd = "/Users/shockham/.vim/bundle/racer/target/release/racer"
let $RUST_SRC_PATH="/Users/shockham/Code/rust/src/"

" airline 
let g:airline_powerline_fonts=1

" vim-slime settings
let g:slime_target = "tmux"
