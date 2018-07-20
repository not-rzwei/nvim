let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitelines_at_eof=1

augroup whiteline_blacklist
  autocmd!
  autocmd FileType python let g:strip_whitelines_at_eof=0
augroup END
