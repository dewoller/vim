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



nmap <F11> <plug>(signify-next-hunk)
nmap <F12> <plug>(signify-prev-hunk)
""
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gp <plug>(signify-prev-hunk)
""
nmap <localleader>gj <plug>(signify-next-hunk)
nmap <localleader>gp <plug>(signify-prev-hunk)
""
"let g:signify_mapping_prev_hunk = '[['
"let g:signify_mapping_next_hunk = ']]'
"
let g:signify_vcs_list = [ 'git', 'yadm' ] 
"
"let g:signify_sign_overwrite = 1
"
"let g:signify_sign_add               = '+'
"let g:signify_sign_delete            = '-'
"let g:signify_sign_change            = '*'
"let g:signify_sign_delete_first_line = '‾'
"
"let g:signify_sign_color_guifg_add      = '#00ff00'
"let g:signify_sign_color_guifg_delete   = '#ff0000'
"let g:signify_sign_color_guifg_change   = '#ffff00'
"let g:signify_sign_color_guibg          = '#111111'
"
"let g:signify_sign_color_ctermfg_add    = 2
"let g:signify_sign_color_ctermfg_delete = 1
"let g:signify_sign_color_ctermfg_change = 3
"let g:signify_sign_color_ctermbg        = 0
"
"let g:signify_sign_color_group_add    = 'MyAdd'
"let g:signify_sign_color_group_delete = 'MyDelete'
"let g:signify_sign_color_group_change = 'MyChange'
"
"let g:signify_line_color_add    = 'DiffAdd'
"let g:signify_line_color_delete = 'DiffDelete'
"let g:signify_line_color_change = 'DiffChange'
"
"let g:signify_enable_cvs = 1
"
"let g:signify_cursorhold_normal = 1
"let g:signify_cursorhold_insert = 1 
