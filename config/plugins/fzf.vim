" Try FZF
    nnoremap <leader>fF :Files<CR>
    nnoremap <leader>ff :GFiles<CR>
    nnoremap <leader>b :Buffers<CR>
    nnoremap <leader>/ :BLines<CR>
    nnoremap <leader>T :Tags<CR>
    nnoremap <leader>h :call FZFHelp()<CR>
    nnoremap <leader>m :History<CR>
    nnoremap <leader>fr :Rg<CR>

    let g:fzf_preview_window = ''

    " doesn't play nice with transparent background and vim
    " https://github.com/vim/vim/issues/2361
    let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.7 } }

    " CTRL-A CTRL-Q to select all and build quickfix list
    func! s:open_in_qf(lines)
        call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
        copen
    endfunc

    let g:fzf_action = {
                \ 'ctrl-q': function('s:open_in_qf'),
                \ 'ctrl-t': 'tab split',
                \ 'ctrl-o': 'split',
                \ 'ctrl-l': 'vsplit'}

    if !has('win32')
        let g:fzf_colors =
                    \ {
                    \ 'fg+': ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
                    \ 'bg+': ['bg', 'CursorLine', 'CursorColumn'],
                    \ 'hl+': ['fg', 'Statement'],
                    \ 'gutter': ['bg', 'Normal']
                    \ }
    endif

    " By default TAB is to select/deselect current item.
    " Make ctrl-a to toggle all, and ctrl-u to clear all
    let $FZF_DEFAULT_OPTS = '--bind ctrl-a:toggle-all --bind ctrl-u:clear-selection'
    " let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

    if executable('fdfind')
        let $FZF_DEFAULT_COMMAND='fdfind --type f --hidden --follow --no-ignore-vcs --exclude .git'
    elseif executable('fd')
        let $FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --no-ignore-vcs --exclude .git'
    elseif executable('rg')
        let $FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs'
    endif

    "silent! packadd fzf
    "silent! packadd fzf.vim

    command! Docs :exe printf('Files %s/docs', empty($DOCSHOME)?expand('~'):expand($DOCSHOME))
    command! VimConfigs :exe printf('Files %s', fnamemodify($MYVIMRC, ":p:h"))

    func! s:helptag_sink(line)
        let [tag, file] = split(a:line, "\t")[0:1]
        execute 'help' tag
    endfunc

    func! FZFHelp(...)
        let tags = uniq(sort(split(globpath(&runtimepath, 'doc/tags', 1), '\n')))
        return fzf#run(fzf#wrap({
                    \ 'source': 'rg --no-filename ".*" '.join(map(tags, 'fzf#shellescape(v:val)')),
                    \ 'sink': function('s:helptag_sink')}))
    endfunc

    " Redefine Rg to search only contents of the files
    command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case -- ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

    " remove delay when close fzf with escape
    augroup my_fzf | au!
        au FileType fzf tnoremap <buffer> <esc> <c-g>
    augroup end



