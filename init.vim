" NVIM Configurations
"

""" dein.vim
" 設定開始
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイル（後述）を用意しておく
  let g:vim_dir   = expand('~/.config/nvim/')
  let s:toml      = g:vim_dir . 'dein/plugins.toml'
  let s:lazy_toml = g:vim_dir . 'dein/lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif
"""

""" Source
function! s:load(file, ...)
  let s:dir = expand('~/.config/nvim/')
  let a:abs = get(a:, 1, 0)

  if a:abs
      let s:dir = ''
  endif

  exec "source" . s:dir . a:file
endfunction

call s:load('general.vim')
call s:load('keymap.vim')

""" Reload
function! Reload_plugins()
  for file in split(glob('~/.config/nvim/plugin/*.vim'), '\n')
    call s:load(file, 1)
  endfor
endfunction
