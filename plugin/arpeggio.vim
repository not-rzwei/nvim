let g:arpeggio_timeoutlen = 80

call arpeggio#map('ivc', '', 0, 'jk', '<esc>')

" RWQ
call arpeggio#map('n', '', 0, 'we', ':w<cr>')
call arpeggio#map('n', '', 0, 'wq', ':wq<cr>')
call arpeggio#map('n', '', 0, 'qe', ':q<cr>')

call arpeggio#map('n', '', 0, 'rv', ':source $MYVIMRC<cr>:echo "Reloaded"<cr>')
call arpeggio#map('n', '', 0, 'ev', ':Files ~/.config/nvim<cr>')

call arpeggio#map('n', '', 0, 'vp', ':VimuxPromptCommand<cr>')
call arpeggio#map('n', '', 0, 'vl', ':VimuxRunLastCommand<cr>')
