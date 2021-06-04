" command line alias

nnoremap <C-C> <ESC>
inoremap <C-C> <ESC>

"reopen accidentally closed window
map ,ru :vs#<cr><c-w>x<c-w>h

" Write buffer (save)
noremap <C-S> :w<CR>
inoremap <C-S> <C-O>:w<CR>
inoremap <C-Q> <Esc>:wq<CR>

"insert a newline
inoremap <C-O> <Esc>o

nnoremap  ]b :bp<CR>
nnoremap  [b :bn<CR>
"delete buffer
nnoremap <C-x>  :bd<CR>
imap <C-d>  :b#<CR>:bd#<CR>:bn<CR>
nmap <C-d>  <c-o>:b#<CR>:bd#<CR>:bn<CR>

"switch window
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k

"switch window
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

"switch window from insert mode
inoremap <C-h> <ESC><C-w>h
inoremap <C-l> <ESC><C-w>l
inoremap <C-j> <ESC><C-w>j
inoremap <C-k> <ESC><C-w>k
"
"switch window from visual mode
vnoremap <C-h> <C-w>h
vnoremap <C-l> <C-w>l
vnoremap <C-j> <C-w>j
vnoremap <C-k> <C-w>k

"smart move
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"tabline operation
nmap <leader>tn :tabnew<cr>
nmap <leader>te :tabedit
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove

"yank to end
nnoremap Y y$

" settings for resize splitted window
nmap <C-w>[ :vertical resize -3<CR>
nmap <C-w>] :vertical resize +3<CR>

" Remove spaces at the end of lines
nnoremap <silent> ,<Space> :<C-u>silent! keeppatterns %substitute/\s\+$//e<CR>



" SAVING
noremap <silent> <C-S>          :update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
vnoremap <silent> <C-s>			<c-c>:w<CR>gv

" increment numbers
nnoremap <kPlus> <C-a>
nnoremap <kMinus> <C-x>

" F keys
nmap <F1> qq
nmap <F2> q
nmap <F3> @q
nmap <F4>  p0:s/ </\t\t/:s/>/// $Nlvl:s/ /\t/yy

" ` is more useful than ' but less accessible.
"nnoremap ' `
"nnoremap ` '


" " Fix command typos (stolen from Adam Katz)
" "inoremap jj <ESC>
" inoremap kk <ESC>
" inoremap lll <ESC>
" inoremap hh <ESC>
" "
" " Alternatives to using Ctrl-[ for esc:
" imap jkl <esc>
" imap jlk <esc>
" imap kjl <esc>
" imap klj <esc>
" imap lkj <esc>
" imap ljk <esc>

" move to previous buffer
nnoremap <C-u> <C-^>
inoremap <C-u> <c-o><C-^>
vnoremap <C-u> <C-^>


"Visual block remapping due to easyclip ctrl-v
"noremap <C-B>     <C-V>
"nnoremap <kEnter> <C-v>


map <c-q> :q<cr>
"map <c-S-q> :qall<cr>

nnoremap / /\v
vnoremap / /\v
" Switch to alternate file
map     <C-N>       :enew<CR>
"
inoremap <M-Tab> <c-o>:bn<cr>
nnoremap <M-Tab> :bn<cr>
vnoremap <M-Tab> :bn<cr>
"
"tnoremap <c-tab> <c-\>:bn<cr>
" Buffer management
nmap <C-d> :b#<CR>:bd#<CR>
imap <C-d> <c-o>:b#<CR>:bd#<CR>

map <leader>n :call RenameFile()<cr>

