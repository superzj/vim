au BufRead,BufNewFile *.c	if (getcwd() =~ 'logic' && &ft == 'c') | let lpc_pre_v22=1 | set ft=lpc | endif
au BufRead,BufNewFile *.c	if (getcwd() =~ 'logic' && &ft == 'lpc') | let lpc_pre_v22=1 | endif
