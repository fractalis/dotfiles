set t_Co=256
set si
set ai
syntax on

filetype indent plugin on

colorscheme xoria256
set bs=2

au BufRead,BufNewFile Makefile* set noexpandtab
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set textwidth=79, tabstop=8, shiftwidth=4, softtabstop=4, expandtab
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix
