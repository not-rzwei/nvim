" Eye
colorscheme monokai_pro
set background=dark
set cursorline
set number
set relativenumber
set noshowmode
set signcolumn=yes
set conceallevel=2 concealcursor=niv
set colorcolumn=79

" Search
set ignorecase
set smartcase
set infercase
set incsearch
set hlsearch
set wrapscan
set showmatch

" Line
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
set smartindent
set shiftround
set textwidth=80
set wrapscan

" Don't create backup.
set nowritebackup
set nobackup
set noswapfile
set backupdir-=.

" Turn down a long line appointed in 'breakat'
set linebreak
set showbreak=\
set breakat=\ \	;:,!?
set whichwrap+=h,l,<,>,[,],b,s,~
if exists('+breakindent')
  set breakindent
  set wrap
else
  set nowrap
endif

" Display candidate supplement.
set nowildmenu
set wildmode=list:longest,full

" Completion setting.
set completeopt=menuone
set complete=.
set pumheight=20

" Window
set splitbelow
set splitright
set winwidth=30
set winheight=1
set noequalalways
set previewheight=8
set helpheight=12

" Disable modelines
set modelines=0
set nomodeline
autocmd MyAutoCmd BufRead,BufWritePost *.txt setlocal modelines=5 modeline

" Enable folding.
set foldenable
set foldmethod=indent
set foldcolumn=1
set fillchars=vert:\|
set commentstring=%s

" FastFold
autocmd MyAutoCmd TextChangedI,TextChanged *
      \ if &l:foldenable && &l:foldmethod !=# 'manual' |
      \   let b:foldmethod_save = &l:foldmethod |
      \   let &l:foldmethod = 'manual' |
      \ endif
autocmd MyAutoCmd BufWritePost *
      \ if &l:foldmethod ==# 'manual' && exists('b:foldmethod_save') |
      \   let &l:foldmethod = b:foldmethod_save |
      \   execute 'normal! zx' |
      \ endif

" Disable paste.
autocmd MyAutoCmd InsertLeave *
      \ if &paste | setlocal nopaste | echo 'nopaste' | endif |
      \ if &l:diff | diffupdate | endif
