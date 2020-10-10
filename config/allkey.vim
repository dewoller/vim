"Plugin key settings


        nnoremap <silent> <leader>fc :Colors<CR>
        nnoremap <silent> <leader>fb :Buffers<CR>
        nnoremap <silent> <leader>ff :call Fzf_dev()<CR>
        nnoremap <silent> <leader>fr :Rg<CR>
        nnoremap <silent> <leader>fw :Rg <C-R><C-W><CR>



    nnoremap <silent> <leader>m :MundoToggle<CR>




	nmap <silent>j <Plug>(accelerated_jk_gj)
	nmap <silent>k <Plug>(accelerated_jk_gk)

    function! InitCaw() abort
    if !&l:modifiable
      silent! nunmap <buffer> gc
      silent! xunmap <buffer> gc
      silent! nunmap <buffer> gcc
      silent! xunmap <buffer> gcc
    else
      nmap <buffer> gc <Plug>(caw:prefix)
      xmap <buffer> gc <Plug>(caw:prefix)
      nmap <buffer> gcc <Plug>(caw:hatpos:toggle)
      xmap <buffer> gcc <Plug>(caw:hatpos:toggle)
    endif
  endfunction
  autocmd MyAutoCmd FileType * call InitCaw()
  call InitCaw()




        xmap v <Plug>(expand_region_expand)
        xmap V <Plug>(expand_region_shrink)


        nmap <Leader><Leader>w <Plug>(easymotion-w)
	    nmap <Leader><Leader>f <Plug>(easymotion-f)
	    nmap <Leader><Leader>b <Plug>(easymotion-b)


        map <silent>sa <Plug>(operator-surround-append)
        map <silent>sd <Plug>(operator-surround-delete)
        map <silent>sr <Plug>(operator-surround-replace)

