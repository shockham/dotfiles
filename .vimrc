set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" General
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kien/ctrlp.vim'
Plugin 'qpkorr/vim-bufkill'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'tpope/vim-dispatch'

" theme
Plugin 'andreasvc/vim-256noir'

" Language specific
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'fsharp/vim-fsharp'

call vundle#end()
filetype plugin indent on

" general settings
set backspace=2
set expandtab
set tabstop=4
set shiftwidth=4
set incsearch
set ai
set smartindent
set mouse=a
set autowrite
set background=dark
set t_Co=256
set hidden
set backupdir=~/.vim/backup//
set dir=~/.vim/swap//
set undodir=~/.vim/undo//
set undofile
set undolevels=1000
set undoreload=10000
set history=5000

" syntax
syntax on
colorscheme 256_noir

" Keybindings
nmap <silent> <C-c> :%s/\s\+$//<cr>
map - :MBEToggle<cr>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "active_filetypes": [],
    \ "passive_filetypes": ["haxe", "html", "fsharp"] }
let g:syntastic_fsharp_checkers = []

" rust
let g:racer_cmd = "/path/to/racer/bin"
let g:racer_experimental_completer = 1
au FileType rust nmap gd <Plug>(rust-def)

"  youcompleteme
let g:ycm_autoclose_preview_window_after_completion=1

" minibufexpl 
let g:miniBufExplorerAutoStart = 0
