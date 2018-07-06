" Plugins configuration
" Keanu/Vim

" dein.vim Setup
set nocompatible
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein')
  call dein#add('haya14busa/dein-command.vim')

  " Interfaces
  call dein#add('Yggdroot/indentLine')
  call dein#add('ntpeters/vim-better-whitespace')
  call dein#add('godlygeek/tabular')
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
  call dein#add('yuttie/comfortable-motion.vim')
  call dein#add('mhinz/vim-startify')
  call dein#add('itchyny/lightline.vim')
  call dein#add('zefei/vim-wintabs')
  call dein#add('airblade/vim-gitgutter')

  " Commands
  call dein#add('easymotion/vim-easymotion')
  call dein#add('tpope/vim-surround')
  call dein#add('haya14busa/incsearch.vim')
  call dein#add('haya14busa/incsearch-fuzzy.vim', { 'depends': 'incsearch.vim' })
  call dein#add('haya14busa/incsearch-easymotion.vim', { 'depends': [ 'incsearch.vim', 'vim-easymotion' ] })

  " Misc
  call dein#add('editorconfig/editorconfig-vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax on


" Yggdroot/indentLine
let g:indentLine_bgcolor_term = "NONE"
let g:indentLine_enabled = 1
let g:indentLine_faster = 1
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'
let g:indentLine_char = '|'
"let g:indentLine_concealcursor = 'ic'

" ntpeters/vim-better-whitespace
let g:better_whitespace_enabled=1
let g:better_whitespace_ctermcolor=1
let g:strip_whitespace_on_save=1

" junegunn/fzf
let g:fzf_command_prefix = 'F'
let g:fzf_layout = { 'down': '~20%' }
let g:fzf_buffers_jump = 1

" mhinz/vim-startify
let g:startify_bookmarks = [
\   {'v': '~/.config/nvim/init.vim'},
\   {'x': '~/.xmonad/xmonad.hs'},
\ ]

" itchyny/lightline
let g:lightline = {
\   'colorscheme': 'jellybeans'
\ }

" haya14busa/incsearch.vim
let g:incsearch#auto_nohlsearch = 1
function! Incsearch_config(...) abort
  return incsearch#util#deepextend(deepcopy({
  \   'converters': [incsearch#config#fuzzyword#converter()],
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {
  \     "\<CR>": '<Over>(easymotion)'
  \   },
  \   'is_expr': 0
  \ }), get(a:, 1, {}))
endfunction
function! Fuzzy_incsearch() abort
  return Incsearch_config({'converters': [incsearch#config#fuzzyword#converter()]})
endfunction
