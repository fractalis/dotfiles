set t_Co=256

set si
set ai
syntax on
filetype indent plugin on

colorscheme xoria256
set tabstop=8 expandtab shiftwidth=4 softtabstop=4

set bs=2

au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.c,*.h call Select_c_style()
au BufRead,BufNewFile Makefile* set noexpandtab
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set textwidth=79
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix


colorscheme xoria256
