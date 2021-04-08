"Plugin key settings


nmap <
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

"open explorer in the current file's directory
map ,e :!start explorer %:p:h:8<cr>

"open windows command prompt in the current file's directory
map ,c :!start cmd /k cd %:p:h:8<cr>

"open rtools bash in the current file's directory
map ,b :!start bash --login -i -c 'cd `cygpath "%:p:h:8"`;bash'<cr>

"open cygwin bash in the current file's directory
map ,z :!start C:/Users/dwol3009/AppData/cygwin/bin/bash.exe --login -i -c 'cd `cygpath "%:p:h:8"`;/usr/bin/zsh  '<cr>

"C:/Users/dwol3009/AppData/cygwin/bin/mintty.exe -i /Cygwin-Terminal.ico /bin/zsh --login
"C:\Users\dwol3009\AppData\cygwin\bin\mintty.exe -i /Cygwin-Terminal.ico /bin/zsh --login
"******* end current file directory commands WINDOWS ******************
"
"


