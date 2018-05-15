set nocompatible
filetype off

call plug#begin()

" General
Plug 'tpope/vim-sensible'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --rust-completer --cs-completer' }
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'qpkorr/vim-bufkill'
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-dispatch'
Plug 'Raimondi/delimitMate'

" theme
Plug 'andreasvc/vim-256noir'

" Language specific

" rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" Language server
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

" elm
Plug 'elmcast/elm-vim'

" FSharp
Plug 'fsharp/vim-fsharp', {
      \ 'for': 'fsharp',
      \ 'do':  'make fsautocomplete',
      \}

" glsl
Plug 'tikhomirov/vim-glsl'

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

" syntax
syntax on
colorscheme 256_noir

" colorcolumn
set colorcolumn=100
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(100,999),",")

" Keybindings
nmap <silent> <C-c> :%s/\s\+$//<cr>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:elm_syntastic_show_warnings = 1

" rust
let g:racer_cmd = "racer"
let g:racer_experimental_completer = 1
au FileType rust nmap gd <Plug>(rust-def)
" rls
if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif

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
