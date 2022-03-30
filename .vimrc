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
" Plug 'ap/vim-buftabline'
Plug 'Raimondi/delimitMate'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'

" theme
Plug 'andreasvc/vim-256noir'

" Language specific

" rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" glsl
Plug 'tikhomirov/vim-glsl'

" sql
Plug 'joereynolds/SQHell.vim'

" graphql
Plug 'jparise/vim-graphql'

" typescript
Plug 'leafgarland/typescript-vim'

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
noremap <C-w>+ :resize +5<CR>
noremap <C-w>- :resize -5<CR>
noremap <C-w>< :vertical:resize -5<CR>
noremap <C-w>> :vertical:resize +5<CR>

" rust
let g:racer_cmd = "racer"
let g:racer_experimental_completer = 1
au FileType rust nmap gd <Plug>(rust-def)

" language server
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ }

" markdown
au FileType markdown set spell spelllang=en_gb

" sql
so ~/.db_connections.vim

" python
autocmd FileType python let b:coc_root_patterns = ['.git', '.env', 'venv', '.venv', 'setup.cfg', 'setup.py', 'pyproject.toml', 'pyrightconfig.json']
