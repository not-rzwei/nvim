" Keanu/vim
" Not very organized

" Load everything
for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
	exe 'source' f
endfor

