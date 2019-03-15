set nocompatible

" Auto install plug if not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" General
if !has('nvim')
    Plug 'tpope/vim-sensible'
endif
Plug 'Valloric/YouCompleteMe', { 'do': 'python3 install.py --rust-completer --cs-completer' }
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'qpkorr/vim-bufkill'
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-dispatch'
Plug 'Raimondi/delimitMate'
Plug 'ctrlpvim/ctrlp.vim'

" theme
Plug 'andreasvc/vim-256noir'

" Language specific

" python
Plug 'python-mode/python-mode', { 'branch': 'develop' }

" rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" Language server
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" elm
Plug 'elmcast/elm-vim'

" FSharp
Plug 'fsharp/vim-fsharp', {
      \ 'for': 'fsharp',
      \ 'do':  'make fsautocomplete',
      \}

" glsl
Plug 'tikhomirov/vim-glsl'

" sql
Plug 'joereynolds/SQHell.vim'

" graphql
Plug 'jparise/vim-graphql'

" dart
Plug 'dart-lang/dart-vim-plugin'

" vue
Plug 'posva/vim-vue'

call plug#end()

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
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" lang specfic format settings
autocmd Filetype dart setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype vue setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

" syntax
syntax on
colorscheme 256_noir

" colorcolumn
set colorcolumn=100
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(100,999),",")

" Keybindings
nmap <silent> <C-c>c :%s/\s\+$//<cr>
map! jj <Esc>

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:elm_syntastic_show_warnings = 1
let g:syntastic_javascript_checkers = ['eslint']

" rust
let g:racer_cmd = "racer"
let g:racer_experimental_completer = 1
au FileType rust nmap gd <Plug>(rust-def)

" language server
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ }

" fsharp
let g:fsharp_only_check_errors_on_write = 1

"  youcompleteme
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_rust_src_path = '~/.multirust/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}

" markdown
au FileType markdown set spell spelllang=en_gb

" pymode
let g:pymode_options_colorcolumn = 0
let g:pymode_options = 0
let g:pymode_lint_cwindow = 0
let g:pymode_rope_goto_definition_bind = 'gd'

" sql
so ~/.db_connections.vim

" show buffer numbers
let g:buftabline_numbers = 1
