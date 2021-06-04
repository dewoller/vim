let g:dennis_base_font = "GuiFont! Source\ Code\ Pro\ Semibold:h"
"let g:dennis_base_font = "GuiFont! Lucida\ Sans\ Typewriter:h"
let s:fontsize = 12
"execute "GuiFont! Source\ Code\ Pro\ Semibold:h12" 
source ~/.vim/ginit_local.vim

execute g:dennis_base_font . s:fontsize 
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute g:dennis_base_font . s:fontsize
endfunction

noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a


" In normal mode, pressing numpad's+ increases the font
noremap <kPlus> :call AdjustFontSize(1)<CR>
noremap <kMinus> :call AdjustFontSize(-1)<CR>

" In insert mode, pressing ctrl + numpad's+ increases the font
inoremap <C-kPlus> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-kMinus> <Esc>:call AdjustFontSize(-1)<CR>a
" In normal mode, pressing numpad's+ increases the font
noremap <kPlus> :call AdjustFontSize(1)<CR>
noremap <kMinus> :call AdjustFontSize(-1)<CR>

"
" In insert mode, pressing ctrl + numpad's+ increases the font
inoremap <C-kPlus> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-kMinus> <Esc>:call AdjustFontSize(-1)<CR>a"

set guioptions-=e
set nocursorline

set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
