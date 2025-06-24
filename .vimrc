set nocompatible

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

" syntax
syntax on
set termguicolors

" colorcolumn
set colorcolumn=100
hi ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(100,999),",")
hi clear VertSplit
hi! VertSplit ctermbg=235 ctermfg=235

" colours
" Vendored from https://github.com/andreasvc/vim-256noir
highlight clear

hi Normal cterm=NONE ctermfg=250 ctermbg=16 gui=NONE guifg=#bcbcbc guibg=#000000
hi Keyword cterm=NONE ctermfg=255 ctermbg=16 gui=NONE guifg=#eeeeee guibg=#000000
hi Constant cterm=NONE ctermfg=252 ctermbg=16 gui=NONE guifg=#d0d0d0 guibg=#000000
hi String cterm=NONE ctermfg=245 ctermbg=16 gui=NONE guifg=#8a8a8a guibg=#000000
hi Comment cterm=NONE ctermfg=240 ctermbg=16 gui=NONE guifg=#585858 guibg=#000000
hi Number cterm=NONE ctermfg=196 ctermbg=16 gui=NONE guifg=#ff0000 guibg=#000000
hi Error cterm=NONE ctermfg=255 ctermbg=88 gui=NONE guifg=#eeeeee guibg=#870000
hi ErrorMsg cterm=NONE ctermfg=255 ctermbg=124 gui=NONE guifg=#eeeeee guibg=#af0000
hi Search cterm=NONE ctermfg=245 ctermbg=236 gui=NONE guifg=#8a8a8a guibg=#303030
hi IncSearch cterm=reverse ctermfg=255 ctermbg=245 gui=reverse guifg=#eeeeee guibg=#8a8a8a
hi DiffChange cterm=NONE ctermfg=160 ctermbg=255 gui=NONE guifg=#d70000 guibg=#eeeeee
hi DiffText cterm=bold ctermfg=250 ctermbg=196 gui=bold guifg=#bcbcbc guibg=#ff0000
hi SignColumn cterm=NONE ctermfg=124 ctermbg=240 gui=NONE guifg=#af0000 guibg=#585858
hi SpellBad cterm=undercurl ctermfg=255 ctermbg=88 gui=undercurl guifg=#eeeeee guibg=#870000
hi SpellCap cterm=NONE ctermfg=255 ctermbg=124 gui=NONE guifg=#eeeeee guibg=#af0000
hi SpellRare cterm=NONE ctermfg=124 ctermbg=16 gui=NONE guifg=#af0000 guibg=#000000
hi WildMenu cterm=NONE ctermfg=240 ctermbg=255 gui=NONE guifg=#585858 guibg=#eeeeee
hi Pmenu cterm=NONE ctermfg=255 ctermbg=240 gui=NONE guifg=#eeeeee guibg=#585858
hi PmenuThumb cterm=NONE ctermfg=232 ctermbg=240 gui=NONE guifg=#080808 guibg=#585858
hi SpecialKey cterm=NONE ctermfg=16 ctermbg=255 gui=NONE guifg=#000000 guibg=#eeeeee
hi MatchParen cterm=NONE ctermfg=16 ctermbg=240 gui=NONE guifg=#000000 guibg=#585858
hi CursorLine cterm=NONE ctermfg=NONE ctermbg=233 gui=NONE guifg=NONE guibg=#121212
hi StatusLine cterm=bold,reverse ctermfg=245 ctermbg=16 gui=bold,reverse guifg=#8a8a8a guibg=#000000
hi StatusLineNC cterm=reverse ctermfg=236 ctermbg=16 gui=reverse guifg=#303030 guibg=#000000
hi Visual cterm=reverse ctermfg=250 ctermbg=16 gui=reverse guifg=#bcbcbc guibg=#000000
hi TermCursor cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE

highlight! link Boolean Normal
highlight! link Delimiter Normal
highlight! link Identifier Normal
highlight! link Title Normal
highlight! link Debug Normal
highlight! link Exception Normal
highlight! link FoldColumn Normal
highlight! link Macro Normal
highlight! link ModeMsg Normal
highlight! link MoreMsg Normal
highlight! link Question Normal
highlight! link Conditional Keyword
highlight! link Statement Keyword
highlight! link Operator Keyword
highlight! link Structure Keyword
highlight! link Function Keyword
highlight! link Include Keyword
highlight! link Type Keyword
highlight! link Typedef Keyword
highlight! link Todo Keyword
highlight! link Label Keyword
highlight! link Define Keyword
highlight! link DiffAdd Keyword
highlight! link diffAdded Keyword
highlight! link diffCommon Keyword
highlight! link Directory Keyword
highlight! link PreCondit Keyword
highlight! link PreProc Keyword
highlight! link Repeat Keyword
highlight! link Special Keyword
highlight! link SpecialChar Keyword
highlight! link StorageClass Keyword
highlight! link SpecialComment String
highlight! link CursorLineNr String
highlight! link Character Number
highlight! link Float Number
highlight! link Tag Number
highlight! link Folded Number
highlight! link WarningMsg Number
highlight! link iCursor SpecialKey
highlight! link SpellLocal SpellCap
highlight! link LineNr Comment
highlight! link NonText Comment
highlight! link DiffDelete Comment
highlight! link diffRemoved Comment
highlight! link PmenuSbar Visual
highlight! link PmenuSel Visual
highlight! link VisualNOS Visual
highlight! link VertSplit Visual
highlight! link Cursor StatusLine
highlight! link Underlined SpellRare
highlight! link rstEmphasis SpellRare
highlight! link diffChanged DiffChange
