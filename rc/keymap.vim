let mapleader=" "

" Command mode
noremap ; :
noremap : ;
noremap q; q:

" Pane
nnoremap vv <c-w><c-v>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Distant Stars
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Command-line mode
cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-d> <Del>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-n> <Down>
cnoremap <C-p> <Up>
cnoremap <C-y> <C-r>*

" Renaming
nnoremap cn *``cgn
nnoremap cN *``cgN
vnoremap <expr> cn "y/\\V\<C-r>=escape(@\", '/')\<CR>\<CR>" . "``cgn"
vnoremap <expr> cN "y/\\V\<C-r>=escape(@\", '/')\<CR>\<CR>" . "``cgN"

" Indent
nnoremap > >>
nnoremap < <<
xnoremap > >gv
xnoremap < <gv

" Deleting
nnoremap X dd
nnoremap dd "_dd
