" Keyboard Mapping
" Keanu/Vim

" Simpler, Faster, Better
noremap <space> <nop>
let mapleader=" "
noremap ; :
noremap : ;
" imap jj <esc>
Arpeggio inoremap jk <esc>
Arpeggio cnoremap jk <esc>
" nnoremap <silent> <leader><leader>w :w<cr>
Arpeggio noremap we :w<esc>
Arpeggio noremap wq :wq<esc>
" nnoremap <silent> <leader>q :q<cr>
Arpeggio noremap qe :q<esc>
nnoremap <leader><leader>q :q!<cr>
nnoremap <silent> <leader>p :Lex<cr>
cnoremap ww w !sudo tee % >/dev/null
noremap <silent> <c-w>p :pclose<cr>
noremap <c-n> :bnext!<cr>

" Pane Movement
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Configuration
noremap <leader><leader>e :vsplit ~/.config/nvim/config/01-general.vim<cr>
" noremap <leader><leader>r :source $MYVIMRC<cr>:echo "Reloaded"<cr>
Arpeggio noremap wr :w<cr>:source $MYVIMRC<cr>:echo "Reloaded"<cr>

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
map <leader>w <plug>(easymotion-wl)
map s <Plug>(easymotion-overwin-f2)
map t <Plug>(easymotion-t2)
" map <leader>f <plug>(easymotion-bd-f)
Arpeggio map fw <plug>(easymotion-bd-f)
map <leader>j <plug>(easymotion-j)
map <leader>k <plug>(easymotion-k)

" incsearch.vim
noremap <silent><expr> /  incsearch#go(Incsearch_config())
noremap <silent><expr> ?  incsearch#go(Incsearch_config({'command': '?'}))
noremap <silent><expr> g/ incsearch#go(Incsearch_config({'is_stay': 1}))
map <silent> n  <plug>(incsearch-nohl-n)
map <silent> N  <plug>(incsearch-nohl-N)

" neosnippet
imap <c-k> <plug>(neosnippet_expand_or_jump)
smap <C-k> <plug>(neosnippet_expand_or_jump)
xmap <C-k> <plug>(neosnippet_expand_target)

