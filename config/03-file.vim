" Filetype Configuration
" Keanu/Vim

au BufNewFile,BufRead hosts,production,staging set ft=ansible_hosts
au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

