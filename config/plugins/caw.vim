

let g:caw_operator_keymappings = 1

" function! InitCaw() abort
"         echo 'init caw'
"         if !&l:modifiable
"                 silent! nunmap <buffer> gc
"                 silent! xunmap <buffer> gc
"                 silent! nunmap <buffer> gcc
"                 silent! xunmap <buffer> gcc
"         else
"                 nmap <buffer> gc <Plug>(caw:prefix)
"                 xmap <buffer> gc <Plug>(caw:prefix)
"                 nmap <buffer> gcc <Plug>(caw:hatpos:toggle)
"                 xmap <buffer> gcc <Plug>(caw:hatpos:toggle)
"         endif
" endfunction
" autocmd MyAutoCmd FileType * call InitCaw()
" call InitCaw()
" 

