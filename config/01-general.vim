" General vim configuration
" General stuff {{{
set modeline
set errorbells
set visualbell
set magic
set encoding=utf-8
set wildmenu
" }}}

" Tab stuff {{{
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set shiftround
set textwidth=80
" }}}

" Search {{{
set ignorecase
set smartcase
set infercase
set incsearch
set hlsearch
set wrapscan
set showmatch
" }}}

" Interface {{{
set background=dark
colorscheme springfield-x16
set number
set relativenumber
set ruler
set cursorline
set scrolloff=4
set display=lastline
set complete-=i
set listchars=tab:→\ ,trail:␣,extends:…,eol:⏎
set list
set noshowmode
set updatetime=100

" No need fancy tree
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_preview = 1
let g:netrw_altv = 1
let g:netrw_winsize = -25
let g:netrw_sort_sequence = '[\/]$,*'
autocmd FileType netrw set nolist
" }}}
"
" vim: syntax=vim fdm=marker
