
augroup MyAutoCmd

    autocmd BufNewFile,BufRead *.vim set ft=vim
    autocmd BufNewFile,BufRead *.Rnw setlocal ft=tex

    autocmd BufRead,BufNewFile *.scad set filetype=openscad

    autocmd Filetype py,sh,lua set ts=4 shiftwidth=2 expandtab
    autocmd Filetype lisp,ruby,xml,html set ts=8 shiftwidth=2 expandtab

augroup END

