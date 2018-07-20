let $CACHE = expand('~/.cache')
if !isdirectory(expand($CACHE))
  call mkdir(expand($CACHE), 'p')
endif

" Load dein
let s:dein_dir = finddir('dein.vim', '.;')
if s:dein_dir != '' || &runtimepath !~ '/dein.vim'
  if s:dein_dir == '' && &runtimepath !~ '/dein.vim'
    let s:dein_dir = expand('$CACHE/dein')
          \. '/repos/github.com/Shougo/dein.vim'
    if !isdirectory(s:dein_dir)
      execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
    endif
  endif
  execute 'set runtimepath^=' . substitute(
        \ fnamemodify(s:dein_dir, ':p') , '/$', '', '')
endif

" Disable default plugins
let g:loaded_gzip        = 1
let g:loaded_health      = 1
let g:loaded_man         = 1
let g:loaded_matchit     = 1
let g:loaded_matchparen  = 1
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1
let g:loaded_rplugin     = 1
let g:loaded_rrhelper    = 1
let g:loaded_shada       = 1
let g:loaded_spellfile   = 1
let g:loaded_tarPlugin   = 1
let g:loaded_tohtml      = 1
let g:loaded_tutor       = 1
let g:loaded_zip         = 1
let g:loaded_zipPlugin   = 1
