
autocmd BufNewFile,BufRead *.Rout set ft=rout
autocmd BufNewFile,BufRead *.Rout.save set ft=rout
autocmd BufNewFile,BufRead *.Rout.fail set ft=rout
autocmd BufNewFile,BufRead *.Rprofile set ft=r
autocmd BufNewFile,BufRead *.R set ft=r
autocmd BufNewFile,BufRead *.r set ft=r
autocmd BufNewFile,BufRead *.rmd set ft=rmd
autocmd BufNewFile,BufRead *.Rmd set ft=rmd
autocmd BufNewFile,BufRead *.RMD set ft=rmd

augroup r
  autocmd!
  autocmd FileType r
        \ set ts=2 |
        \ set shiftwidth=2 |
        \ set expandtab |
  autocmd FileType rmd
        \ set ts=2 |
        \ set shiftwidth=2 |
        \ set expandtab |
augroup END



