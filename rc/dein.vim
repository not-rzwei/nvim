" dein configuration
"

let g:dein#install_progress_type = 'title'
let g:dein#enable_notification = 1

let s:path = expand('$CACHE/dein')

if !dein#load_state(s:path)
  finish
endif

call dein#begin(s:path, expand('<sfile>'))

for file in split(glob('~/.config/nvim/dein/normal/*.toml'), '\n')
  call dein#load_toml(file, {'lazy': 0})
endfor

for file in split(glob('~/.config/nvim/dein/lazy/*.toml'), '\n')
  call dein#load_toml(file, {'lazy': 1})
endfor

call dein#end()
call dein#save_state()

call dein#call_hook('source')
call dein#call_hook('post_source')
