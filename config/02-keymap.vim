" Keyboard Mapping
" Keanu/Vim

" Simpler, Faster, Better
noremap <space> <nop>
let mapleader=" "
noremap ; :
noremap : ;
imap jj <esc>
nnoremap <silent> <leader><leader>w :w<cr>
nnoremap <silent> <leader>q :q<cr>
nnoremap <leader><leader>q :q!<cr>
nnoremap <silent> <leader>p :Lex<cr>
cnoremap ww w !sudo tee % >/dev/null
noremap <silent> <c-w>p :pclose<cr>
noremap <c-n> :bnext!<cr>

" Pane Movement
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

" Configuration
noremap <leader><leader>e :vsplit ~/.config/nvim/config/01-general.vim<cr>
noremap <leader><leader>r :source $MYVIMRC<cr>:echo "Reloaded"<cr>

" Evil keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" junegunn/fzf.vim
noremap - :FFiles<cr>
noremap _ :FBuffer<cr>

" airblade/gitgutter
nmap <leader>ha <plug>GitGutterStageHunk
nmap <leader>hr <plug>GitGutterUndoHunk
nmap <leader>hv <plug>GitGutterPreviewHunk

" easymotion/vim-easymotion
map <leader>w <Plug>(easymotion-wl)
map s <Plug>(easymotion-overwin-f2)
map t <Plug>(easymotion-t2)
map <leader>f <Plug>(easymotion-bd-f)
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)

" haya14busa/incsearch.vim
noremap <silent><expr> /  incsearch#go(Incsearch_config())
noremap <silent><expr> ?  incsearch#go(Incsearch_config({'command': '?'}))
noremap <silent><expr> g/ incsearch#go(Incsearch_config({'is_stay': 1}))
noremap <silent><expr> <leader>/  incsearch#go(Fuzzy_incsearch())
map <silent> n  <Plug>(incsearch-nohl-n)
map <silent> N  <Plug>(incsearch-nohl-N)
