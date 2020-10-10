" Plugin: GitGutter
"let g:gitgutter_map_keys = 0
"let g:gitgutter_sign_added = '▎'
"let g:gitgutter_sign_modified = '▎'
"let g:gitgutter_sign_removed = '▏'
"let g:gitgutter_sign_removed_first_line = '▔'
"let g:gitgutter_sign_modified_removed = '▋'
" ---------------------------------------------------------
"au TextChangedI * GitGutter
"

let g:gitgutter_git_executable = '/usr/bin/git'
GitGutterLineNrHighlightsEnable
GitGutterEnable

nmap <Leader>gn <Plug>GitGutterNextHunk  " git next
nmap <Leader>gp <Plug>GitGutterPrevHunk  " git previous
