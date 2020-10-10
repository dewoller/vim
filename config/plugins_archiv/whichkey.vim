nnoremap <localleader> :<c-u>WhichKey  ','<CR>
vnoremap <localleader> :<c-u>WhichKeyVisual  ','<CR>

nnoremap [ :<c-u>WhichKey  '['<CR>
vnoremap [ :<c-u>WhichKeyVisual  '['<CR>

nnoremap ] :<c-u>WhichKey  ']'<CR>
vnoremap ] :<c-u>WhichKeyVisual  ']'<CR>

let g:which_key_map =  {}
let g:which_key_map = {
      \ 'name' : 'ThinkVimRoot ' ,
      \ '1' : 'which_key_ignore'      ,
      \ '2' : 'which_key_ignore'      ,
      \ '3' : 'which_key_ignore'      ,
      \ '4' : 'which_key_ignore'      ,
      \ '5' : 'which_key_ignore'      ,
      \ '6' : 'which_key_ignore'      ,
      \ '7' : 'which_key_ignore'      ,
      \ '8' : 'which_key_ignore'      ,
      \ '9' : 'which_key_ignore'      ,
      \ '0' : 'which_key_ignore'      ,
      \ 'e' : 'Defx' ,
      \ '-' : 'ChooseWin' ,
      \ 't' : {
        \ 'name' : '+tab',
        \ 'f' : 'FindFile',
        \ 'r' : 'RgSearch',
        \ 'c' : 'ColorChange',
        \ 'w' : 'SearchExpendWord',
        \ },
      \ 'f' : {
            \ 'name' : '+FzfCommad',
            \ 'f' : 'FindFile',
            \ 'r' : 'RgSearch',
            \ 'c' : 'ColorChange',
            \ 'w' : 'SearchExpendWord',
            \ },
      \ 'm' : 'OpenMundo' ,
      \ ' ' : {
            \ 'name' : '+Easymotion',
            \ 'w' : 'Easymotion-w',
            \ 'b' : 'Easymotion-b',
            \ 'f' : 'Easymotion-f',
            \ },
    \ 'b'  : {
            \'name'  : '+bufkill',
            \},
    \ '!'  : {
            \'name'  : '+bufkillbang',
            \},
    \ 'g'  : {
            \'name'  : '+GitHunk',
            \ 'j'    : 'Git Next Hunk',
            \ 'k'    : 'Git Prev Hunk',
            \}
      \ }

let g:which_key_localmap ={
      \ 'name' : '+LocalLeaderKey'  ,
      \ 't'    : 'Tagbar',
	  \ 'b' : {
	  \ 'name' : '+Bufkill',
	  \ },
      \ 'a' : {
      \ 'name' : '+R_all',
      \ },
      \ 'x' : {
      \ 'name' : '+R_comment',
      \ },
      \ 'w' : {
      \ 'name' : '+R_workflowr',
      \ },
	  \ 'v' : {
	  \ 'name' : '+RView',
	  \ },
	  \ 'f' : {
	  \ 'name' : '+R_Function',
	  \ },
	  \ 'p' : {
	  \ 'name' : '+R_paragraph',
	  \ },
      \ 'r' : {
                    \ 'name' : '+Ractions',
                    \ 'i' : 'loadd',
                    \ 'k' : 'readd',
      \ },
      \ 'k' : {
                   \ 'name' : '+Easymotion',
                   \ 'w' : 'Easymotion-w',
      \ },
      \ 'g'  : {
                \'name'  : '+GitOperation',
                \ 'a'    : 'Gadd',
                \ 'd'    : 'Gdiff',
                \ 'c'    : 'Gcommit',
                \ 'b'    : 'Gblame',
                \ 'B'    : 'Gbrowse',
                \ 'S'    : 'Gstatus',
                \ 'p'    : 'Gpush',
                \ 'h'    : 'GitBranch',
                \ 'j'    : 'Git Next Hunk',
                \ 'k'    : 'Git Prev Hunk',
                \ 's'    : 'Magit',
                \}
      \ }

let g:which_key_rsbgmap = {
      \ 'name' : '+RightSquarebrackets',
      \ 'b'    : 'NextBuffer',
      \ ']'    : 'Vim-goPrefunction',
      \ }

let g:which_key_lsbgmap = {
      \ 'name' : '+LeftSquarebrackets',
      \ 'b'    : 'PreBuffer',
      \ '['    : 'Vim-goNextfunction',
      \ }

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
            \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
