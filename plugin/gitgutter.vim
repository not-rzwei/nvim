let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=none
highlight SignColumn guibg=none

set updatetime=100

nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hr <Plug>GitGutterUndoHunk
nmap <Leader>hv <Plug>GitGutterPreviewHunk
