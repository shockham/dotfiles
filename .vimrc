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
Plug 'terryma/vim-multiple-cursors'
Plug 'qpkorr/vim-bufkill'
Plug 'ap/vim-buftabline'
Plug 'Raimondi/delimitMate'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', { 'do': { -> coc#util#install() } }
Plug 'ludovicchabant/vim-gutentags'
Plug 'liuchengxu/vim-clap', { 'do': function('clap#helper#build_all') }
Plug 'editorconfig/editorconfig-vim'

" theme
Plug 'andreasvc/vim-256noir'

" Language specific

" rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" elm
Plug 'elmcast/elm-vim'

" glsl
Plug 'tikhomirov/vim-glsl'

" sql
Plug 'joereynolds/SQHell.vim'

" graphql
Plug 'jparise/vim-graphql'

" vue
Plug 'posva/vim-vue'

" typescript
Plug 'leafgarland/typescript-vim'

" svelte
Plug 'burner/vim-svelte'

" gleam
Plug 'gleam-lang/gleam.vim'

" TidalCycles/supercollider
Plug 'supercollider/scvim'
Plug 'tidalcycles/vim-tidal'

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
set statusline=%<%f\ %h%m%r%=%{coc#status()}\ %-14.(%l,%c%V%)\ %P
set modelines=0
set nomodeline
set lazyredraw

" lang specfic format settings
autocmd Filetype dart setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype vue setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype scss setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

" syntax
syntax on
colorscheme 256_noir

" colorcolumn
set colorcolumn=100
hi ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(100,999),",")
hi clear VertSplit
hi! VertSplit ctermbg=235 ctermfg=235

" Keybindings
nmap <silent> <C-c>c :%s/\s\+$//<cr>
map! jj <Esc>
tnoremap <Esc> <C-\><C-n>

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

" markdown
au FileType markdown set spell spelllang=en_gb

" sql
so ~/.db_connections.vim

" show buffer numbers
let g:buftabline_numbers = 1

" tidal config
" let g:tidal_default_config = {"socket_name": "default", "target_pane": "net:2:3"}
let g:tidal_target = "terminal"
