" Neomake
" ---------


"let R_compldir = 'nvim-r/'
"
echom "loading nvim-r"
" add settings for nvim-r plugin (auto-start with .r and .rmd files)

function! s:myStartR()
	if string(g:SendCmdToR) == "function('SendCmdToR_fake')" 
		:sleep 2
		call StartR("R") 
	endif
endfunction

"
autocmd FileType r call <SID>myStartR()
autocmd FileType rmd call <SID>myStartR()
autocmd VimLeave * if exists("g:SendCmdToR") && string(g:SendCmdToR) != "function('SendCmdToR_fake')" | call RQuit("nosave") | endif


let R_assign = 0
let R_nvim_wd = -1
let R_auto_start = 1
let R_clear_line = 1


" select starting from the first chunk, and continue selecting the next pipy
" bit
"        nnoremap Z {v/ %<cr>
"        vnoremap Z n

function! SendChunkToRDennis() range
    let n = @n
    silent! normal gv"ny
    call SendSelectionToR("", "stay")
    set nohlsearch
endfunction

"find the last %>% the line
nnoremap Q mz0/%\(>\\|\$\)%<cr>$Nhv{:call SendChunkToRDennis()<cr>`z<esc>
nnoremap Z mz0/%\(>\\|\$\)%<cr>$Nhi%>% DT::datatable()<esc>v{:call SendChunkToRDennis()<cr><esc>u`z<esc>
nnoremap V mz0/%\(>\\|\$\)%<cr>$Nhi%>% View<esc>v{:call SendChunkToRDennis()<cr><esc>u`z<esc>

" run the line marked by 1
nmap <C-1> mj`1Q`j

" make a file for this function
nnoremap <LocalLeader>rv ? <cr>l"by$"ayw:enew<cr>"ap:s/^/R\//<cr>:s/$/.R/<cr>"ay$dd"bp:s/(/ <- function(/<cr>:s/,\? *$/ {\r\r\r}/<cr>:execute 'write' @a<cr>

"imap <C-c><C-c> <esc><C-w>ji<cr>Q<cr><C-c><C-w>h
"nmap <C-c><C-c> <C-w>ji<cr>Q<cr><C-c><C-w>h


function! RunShinyApp() 
    let cmd='shiny::runApp(r"(' . expand('%:p:h') .  ')")'
    echo cmd
    call g:SendCmdToR( cmd )
endfunction

function! RenderRmarkdown() 
    let cmd='browseURL( rmarkdown::render(r"(' . expand('%:p') .  ')", output_dir="output/"))'
    echo cmd
    call g:SendCmdToR( cmd )
endfunction

nmap <silent> <LocalLeader>rk :call RAction("drake::readd")<CR>
nmap <silent> <LocalLeader>ri :call RAction("drake::loadd")<CR>
nmap <silent> <LocalLeader>rl :call RAction("drake::loadd")<CR>
nmap <silent> <LocalLeader>r1 :call g:SendCmdToR('source("_load_targets.R")')<CR>
nmap <silent> <LocalLeader>rr :call RenderRmarkdown()<CR>
nmap <silent> <LocalLeader>ry :call RunShinyApp()<CR>
nmap <silent> <LocalLeader>ny :call RunShinyApp()<CR>
nmap <silent> <LocalLeader>tk :call RAction("targets::tar_read")<CR>
nmap <silent> <LocalLeader>ti :call RAction("targets::tar_load")<CR>
nmap <silent> <LocalLeader>tl :call RAction("targets::tar_load")<CR>
nmap <silent> <LocalLeader>rd :call RAction("debug")<CR>
nmap <silent> <LocalLeader>pg :call RAction("dplyr::glimpse")<CR>
nmap <silent> <LocalLeader>ps :call RAction("summary")<CR>
nmap <silent> <LocalLeader>pt :call RAction("str")<CR>
nmap <silent> <LocalLeader>pk :call RAction("skimr::skim")<CR>
nmap <silent> <LocalLeader>pr :call RAction('terse::terse')
"nmap <silent> <LocalLeader>b :call RAction("debug")<CR>
"nmap <silent> <LocalLeader>u :call RAction("undebug")<CR>
"
" run shiny app
"nmap <silent> <LocalLeader>s :call g:SendCmdToR( 'shiny::runApp( "' . expand('%:p:h')  . '")')<CR>
nmap <silent> <LocalLeader>tm :call g:SendCmdToR( 'targets::tar_make()')<CR>
nmap <silent> <LocalLeader>rm :call g:SendCmdToR( 'drake::drake_cache(".drake")$unlock()')<CR>:call g:SendCmdToR( 'drake::r_make()')<CR>

nmap <silent> <LocalLeader>wb :call g:SendCmdToR( 'workflowr::wflow_build( "' . expand('%')  . '")')<CR>
nmap <silent> <LocalLeader>wp :call g:SendCmdToR( 'workflowr::wflow_publish( "' . expand('%')  . '")')<CR>

"knit"
"map <LocalLeader>ks :call g:SendCmdToR('require(knitr); .nvim_oldwd <- getwd(); setwd("' . substitute(expand("%:p:h"), '\\', '/', 'g') . '"); .nvim_of = knit("' . expand("%:t") . '"); setwd(.nvim_oldwd); rm(.nvim_oldwd); rmarkdown::run( .nvim_of ); rm(.nvim_of) ')<cr>
"map <LocalLeader>ks :call g:SendCmdToR('require(knitr); nvim_of = knit("' . expand("%:p") . '"); setwd(.nvim_oldwd); rm(.nvim_oldwd); rmarkdown::run( .nvim_of ); rm(.nvim_of) ')<cr>

autocmd BufNew * wincmd =
let R_rconsole_width = 57
let R_min_editor_width = 18
let R_nvimpager = "vertical"
let R_source_args = 'echo = TRUE'
let R_commented_lines = 1

"au BufEnter * if &buftype == 'terminal' | :startinsert | endif

map + 30<C-W>>:call g:SendCmdToR('wideScreen()')<CR>
map - 30<C-W><:call g:SendCmdToR('wideScreen()')<CR>

" ctags
let g:tagbar_type_r = {
            \ 'ctagstype' : 'r',
            \ 'kinds'     : [
            \ 'f:Functions',
            \ 'g:GlobalVariables',
            \ 'v:FunctionVariables',
            \ ]
            \ }

" ctags
let g:tagbar_type_rmd = {
            \ 'ctagstype' : 'r',
            \ 'kinds'     : [
            \ 'f:Functions',
            \ 'g:GlobalVariables',
            \ 'v:FunctionVariables',
            \ ]
            \ }

command! Rtags :!Rscript -e 'rtags(path="./", recursive=TRUE, ofile="RTAGS")' -e 'source("/home/dewoller/dotfiles/nvim/plugged/Nvim-R/R/nvimcom/R/etags2ctags.R")' -e 'etags2ctags("RTAGS", ".git/tags")' -e 'unlink("RTAGS")'


"autocmd FileType r if string(g:SendCmdToR) == "function('SendCmdToR_fake')" | call StartR("R") | endif
"autocmd FileType rmd if string(g:SendCmdToR) == "function('SendCmdToR_fake')" | call StartR("R") | endif
autocmd VimLeave * if exists("g:SendCmdToR") && string(g:SendCmdToR) != "function('SendCmdToR_fake')" | call RQuit("nosave") | endif


" disable keymaps
    let R_user_maps_only = 1
"let R_disable_cmds = ['RSetwd', 'RDputObj']
nmap <silent> <LocalLeader>aa         :call SendFileToR("silent")<CR>
nmap <silent> <LocalLeader>d          :call SendLineToR("down")<CR>0
nmap <silent> <LocalLeader>l          :call SendLineToR("stay")<CR>
nmap <silent> <LocalLeader>m          :set opfunc=SendMotionToR<CR>g@
nmap <silent> <LocalLeader>ff         :call SendFunctionToR("silent", "stay")<CR>
nmap <silent> <LocalLeader>kh         :call RMakeRmd("html_document")<CR>
nmap <silent> <LocalLeader>kl         :call RMakeRmd("beamer_presentation")<CR>
nmap <silent> <LocalLeader>ko         :call RMakeRmd("odt_document")<CR>
nmap <silent> <LocalLeader>kp         :call RMakeRmd("pdf_document")<CR>
nmap <silent> <LocalLeader>kr         :call RMakeRmd("default")<CR>
nmap <silent> <LocalLeader>kw         :call RMakeRmd("word_document")<CR>
nmap <silent> <LocalLeader>o          :call SendLineToRAndInsertOutput()<CR>0
nmap <silent> <LocalLeader>ra         :call RAction("args")<CR>
nmap <silent> <LocalLeader>re         :call RAction("example")<CR>
nmap <silent> <LocalLeader>rf         :call StartR("R")<CR>
nmap <silent> <LocalLeader>rh         :call RAction("help")<CR>
nmap <silent> <LocalLeader>rn         :call RAction("nvim.names")<CR>
nmap <silent> <LocalLeader>rp         :call RAction("print")<CR>
nmap <silent> <LocalLeader>rq         :call RQuit('nosave')<CR>
nmap <silent> <LocalLeader>rs         :call RAction("summary")<CR>
nmap <silent> <LocalLeader>rt         :call RAction("str")<CR>
nmap <silent> <LocalLeader>sa         :call SendSelectionToR("echo", "down", "normal")<CR>
nmap <silent> <LocalLeader>sd         :call SendSelectionToR("silent", "down", "normal")<CR>
nmap <silent> <LocalLeader>se         :call SendSelectionToR("echo", "stay", "NewtabInsert")<CR>
nmap <silent> <LocalLeader>ss         :call SendSelectionToR("silent", "stay", "normal")<CR>
nmap <silent> <LocalLeader>so         :call SendSelectionToR("echo", "stay", "normal")<CR>
nmap <silent> <LocalLeader>vv         :call RAction("viewobj", ", howto='vsplit'")<CR>
nmap <silent> <LocalLeader>xx         :call RComment("normal")<CR>
nmap <silent> <LocalLeader>pp         :call SendParagraphToR("silent", "stay")<CR>
nmap <silent> <LocalLeader>pd         :call SendParagraphToR("silent", "down")<CR>
vnoremap <silent> <LocalLeader>ss         <Esc>:call SendSelectionToR("silent", "stay")<CR>
nmap <silent> <LocalLeader>ch         :call SendFHChunkToR()<CR>


