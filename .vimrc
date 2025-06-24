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
Plug 'editorconfig/editorconfig-vim'

" theme
Plug 'andreasvc/vim-256noir'

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
set modelines=0
set nomodeline
set lazyredraw
set wildignore+=*/node_modules/*
set wildignore+=*/coverage/*
set tags+=/usr/include/tags

" lang specfic format settings
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
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

" markdown
au FileType markdown set spell spelllang=en_gb
