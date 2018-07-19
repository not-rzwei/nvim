let g:fzf_layout = { 'down': '~30%' }
let g:fzf_buffers_jump = 1

let $FZF_DEFAULT_COMMAND = "fd --type f --hidden --follow --exclude .git"

autocmd FileType fzf tnoremap <buffer>  <leader>- <c-c>
autocmd FileType fzf tnoremap <buffer>  <leader>= <c-c>

nnoremap <leader>- :Files<cr>
nnoremap <leader>= :Buffers<cr>
