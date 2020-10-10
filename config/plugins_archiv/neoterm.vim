nmap <silent> <LocalLeader>aa :call TREPLSendFile<cr>
nmap <silent> <LocalLeader>ss :call TREPLSendSelection<cr> 
nmap <silent> <LocalLeader>d :call TREPLSendLine<cr> 


let g:neoterm_default_mod='belowright' " open terminal in bottom split
let g:neoterm_size=16 " terminal split size
let g:neoterm_autoscroll=1 " scroll to the bottom when running a command
echo "newterm"
