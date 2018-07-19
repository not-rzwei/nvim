" VIM Mode
noremap ; :
noremap : ;

" Pane
nnoremap vv <c-w><c-v>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Misc
nnoremap <expr> <leader><leader>r Reload_plugins()
nnoremap * :keepjumps normal! mi*`i<CR>

" No Evil keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
