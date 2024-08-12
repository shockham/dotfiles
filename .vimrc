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
Plug 'Raimondi/delimitMate'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'

" theme
Plug 'andreasvc/vim-256noir'

" Language specific

" graphql
Plug 'jparise/vim-graphql'

" typescript
Plug 'leafgarland/typescript-vim'

" hare
Plug 'https://git.sr.ht/~sircmpwn/hare.vim'

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
set wildignore+=*/node_modules/*
set wildignore+=*/coverage/*

" lang specfic format settings
autocmd Filetype dart setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype vue setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype scss setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype go setlocal autoindent noexpandtab tabstop=4 shiftwidth=4

" syntax
syntax on
colorscheme 256_noir
set termguicolors

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

" Start up
autocmd VimEnter * :vs
autocmd VimEnter * :wincmd l
autocmd VimEnter * :terminal

" coc-nvim: config
function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" coc-nvim: Insert <tab> when previous text is space, refresh completion if not.
inoremap <silent><expr> <TAB>
\ coc#pum#visible() ? coc#pum#next(1):
\ CheckBackspace() ? "\<Tab>" :
\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

" coc-nvim: GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" markdown
au FileType markdown set spell spelllang=en_gb

" coc extensions
let g:coc_global_extensions = ['coc-go', 'coc-html', 'coc-css', 'coc-prettier', 'coc-eslint', 'coc-rust-analyzer', '@yaegassy/coc-volar', 'coc-clangd']

" python
autocmd FileType python let b:coc_root_patterns = ['.git', '.env', 'venv', '.venv', 'setup.cfg', 'setup.py', 'pyproject.toml', 'pyrightconfig.json']

" go
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
