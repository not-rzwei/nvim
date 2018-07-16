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
  call dein#add('ntpeters/vim-better-whitespace')
  call dein#add('godlygeek/tabular', {
        \ 'lazy': 1,
        \ 'on_cmd': 'Tabularize'
        \ })

  call dein#add('junegunn/fzf', {
        \ 'build': './install --all',
        \ 'merged': 0,
        \ 'lazy': 1,
        \ 'on_cmd': ['FFBuffer', 'FFiles']
        \ })
  call dein#add('junegunn/fzf.vim', {
        \ 'depends': 'fzf'
        \ })

  call dein#add('yuttie/comfortable-motion.vim')
  call dein#add('mhinz/vim-startify')
  call dein#add('itchyny/lightline.vim')
  call dein#add('airblade/vim-gitgutter')

  " Commands
  call dein#add('neoclide/vim-easygit')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('AndrewRadev/splitjoin.vim')
  call dein#add('tpope/vim-surround')
  call dein#add('jiangmiao/auto-pairs')

  call dein#add('haya14busa/incsearch.vim', {
        \ 'lazy': 1,
        \ 'on_func': 'incsearch#go'
        \ })
  call dein#add('haya14busa/incsearch-easymotion.vim', {
        \ 'depends': [ 'incsearch.vim', 'vim-easymotion' ]
        \ })

  " Languages
  call dein#add('lepture/vim-jinja')

  " Autocomplete
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('othree/jspc.vim')
  call dein#add('wokalski/autocomplete-flow', {
        \ 'lazy': 1,
        \ 'on_ft': ['javascript']
        \ })
  call dein#add('zchee/deoplete-jedi', {
        \ 'lazy': 1,
        \ 'on_ft': ['python']
        \ })

  " Lint
  call dein#add('w0rp/ale')

  " Misc
  call dein#add('kana/vim-arpeggio')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('houtsnip/vim-emacscommandline')
  call dein#add('benmills/vimux')
  call dein#add('jaxbot/browserlink.vim')
  call dein#add('tpope/vim-commentary', {
        \ 'lazy': 1,
        \ })

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax on

" vim-better-whitespace
let g:better_whitespace_enabled=1
let g:better_whitespace_ctermcolor=1
let g:strip_whitespace_on_save=1

" fzf
let g:fzf_command_prefix = 'F'
let g:fzf_layout = { 'down': '~20%' }
let g:fzf_buffers_jump = 1

" vim-startify
let g:startify_bookmarks = [
\   {'v': '~/.config/nvim/init.vim'},
\   {'x': '~/.xmonad/xmonad.hs'},
\ ]

" lightline
let g:lightline = {
\   'colorscheme': 'jellybeans'
\ }

" vim-easygit
let g:easygit_enable_command = 1
let g:easygit_edit_edit_command = 'vsplit'
let g:easygit_diff_edit_command = 'pedit'

" vim-easymotion
let g:EasyMotion_smartcase = 1
let g:EasyMotion_startofline = 1
let g:EasyMotion_use_smartsign_us = 1

" incsearch.vim
let g:incsearch#auto_nohlsearch = 1
function! Incsearch_config(...) abort
  return incsearch#util#deepextend(deepcopy({
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {
  \     "\<CR>": '<Over>(easymotion)'
  \   },
  \   'is_expr': 0
  \ }), get(a:, 1, {}))
endfunction

" vim-arpeggio
call arpeggio#load()
let g:arpeggio_timeoutlen = 80

" deoplete.vim
let g:deoplete#enable_at_startup = 1
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = ['jspc#omni']

" neosnippet
let g:neosnippet#enable_completed_snippet = 1
let g:neosnippet#snippets_directory='~/.config/nvim/snippets'


" ale
let g:ale_linters = {
\   'javascript': ['eslint', 'flow'],
\  }
let g:ale_fixers = {
\   'javascript': ['eslint', 'importjs'],
\}

" vimux
let g:VimuxOrientation = "v"
