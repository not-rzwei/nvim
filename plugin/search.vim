let g:incsearch#auto_nohlsearch = 1
let g:anzu_status_format = "%p (%i/%l) %w"

map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

map n <Plug>(incsearch-nohl-n)<Plug>(anzu-n-with-echo)
map N <Plug>(incsearch-nohl-N)<Plug>(anzu-N-with-echo)
map * <Plug>(incsearch-nohl-*)<Plug>(anzu-star-with-echo)
map # <Plug>(incsearch-nohl-#)<Plug>(anzu-sharp-with-echo)
