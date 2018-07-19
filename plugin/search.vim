let g:incsearch#auto_nohlsearch = 1
let g:anzu_status_format = "%p(%i/%l) %w"
let g:anzu_enable_CursorMoved_AnzuUpdateSearchStatus = 1

map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

map n <Plug>(incsearch-nohl)<Plug>(anzu-n-with-echo)
map N <Plug>(incsearch-nohl)<Plug>(anzu-N-with-echo)
map * <Plug>(incsearch-nohl)<Plug>(anzu-star-with-echo)
map # <Plug>(incsearch-nohl)<Plug>(anzu-sharp-with-echo)

function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzy#converter()],
  \   'modules': [incsearch#config#easymotion#module()],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> z/ incsearch#go(<SID>config_easyfuzzymotion())
