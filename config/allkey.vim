"Plugin key settings


vmap <silent>sf        <Plug>SQLU_Formatter<CR>

    
nnoremap <silent> <leader>fc :Colors<CR>
nnoremap <silent> <leader>fb :Buffers<CR>
nnoremap <silent> <leader>ff :call Fzf_dev()<CR>
nnoremap <silent> <leader>fr :Rg<CR>
nnoremap <silent> <leader>fw :Rg <C-R><C-W><CR>



nnoremap <silent> <leader>u :MundoToggle<CR>




nmap <silent>j <Plug>(accelerated_jk_gj)
nmap <silent>k <Plug>(accelerated_jk_gk)


xmap v <Plug>(expand_region_expand)
xmap V <Plug>(expand_region_shrink)


nmap <Leader><Leader>w <Plug>(easymotion-w)
nmap <Leader><Leader>f <Plug>(easymotion-f)
nmap <Leader><Leader>b <Plug>(easymotion-b)


map <silent>sa <Plug>(operator-surround-append)
map <silent>sd <Plug>(operator-surround-delete)
map <silent>sr <Plug>(operator-surround-replace)


"******* current file directory commands WINDOWS **********************
"%:p:h:8 gets the current file's directory and :8 is what puts it
"into dos short form


"open cygwin bash in the current file's directory
map ,b :!gnome-terminal --working-directory=%:p:h  <cr>

"******* end current file directory commands WINDOWS ******************
"
"


