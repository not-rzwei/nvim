" Keyboard Mapping
" Keanu/Vim

" Simpler, Faster, Better
noremap <space> <nop>
let mapleader=" "
noremap ; :
noremap : ;
nnoremap <silent> <leader>w :w<cr>
nnoremap <silent> <leader>q :q<cr>
nnoremap <leader><leader>q :q!<cr>
nnoremap <silent> <leader>l :Lex<cr>
cnoremap ww w !sudo tee % >/dev/null
noremap <c-w>p :pclose<cr>
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


" haya14busa/incsearch.vim
noremap <silent><expr> /  incsearch#go(Incsearch_config())
noremap <silent><expr> ?  incsearch#go(Incsearch_config({'command': '?'}))
noremap <silent><expr> g/ incsearch#go(Incsearch_config({'is_stay': 1}))
noremap <silent><expr> <leader>/  incsearch#go(Fuzzy_incsearch())
