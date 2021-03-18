" take me to your leader
" for single letter mappings


set encoding=utf-8
nnoremap <SPACE> <Nop>
let mapleader=' '

" localleader
" for filetype-specific mappings
let maplocalleader=','

" Auto-backup files and .swp files don't go to pwd
set swapfile
set termguicolors
set backup
set backupdir=~/.vim-tmp//,/tmp//
set directory=~/.vim-tmp//,/tmp//
set dir=~/.vim-tmp//,/tmp//
set nocursorline

let $PATH = "c:\\rtools40\\usr\\bin;c:\\rtools40\\mingw64\\bin;" . $PATH



set autoread
"

set autowrite
set confirm
set splitright
if has('vim_starting')
	set encoding=UTF-8
	scriptencoding UTF-8
endif
set laststatus=2

if has('clipboard')
	set clipboard& clipboard+=unnamedplus
endif
set history=2000
set number
"set timeout ttimeout
set notimeout 
set nottimeout
set cmdheight=2         " Height of the command line
set timeoutlen=1000
set ttimeoutlen=10
set updatetime=250

"set " guard for distributions lacking the 'persistent_undo' feature.
if has('persistent_undo')
  " define a path to store persistent undo files.
  let target_path = expand('~/.config/vim-persisted-undo/')    " create the directory and any parent directories
  " if the location does not exist.
  if !isdirectory(target_path)
    call system('mkdir -p ' . target_path)
  endif    " point Vim to the defined undo directory.
  let &undodir = target_path    " finally, enable undo persistence.
  set undofile
endif "undofile

set relativenumber
set backspace=2

set backspace=indent,eol,start

"set tabstop=4     " a tab is four spaces
" allow backspacing over everything in insert mode
set copyindent    " copy the previous indentation on autoindenting
"set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'

set smarttab      " insert tabs on the start of a line according to
"set autoindent shiftwidth=4
set expandtab


set hidden
set shortmess=aFc
set signcolumn=yes
set completefunc=emoji#complete
"set completeopt =longest,menu
"set completeopt-=preview
set list
set listchars=tab:»·,nbsp:+,trail:·,extends:→,precedes:←

set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
"gdefault

set ignorecase      " Search ignoring case
set smartcase       " Keep case when searching with *
set infercase       " Adjust case in insert completion mode
set incsearch       " Incremental search
set hlsearch        " Highlight search results
set wrapscan        " Searches wrap around the end of the file
set showmatch       " Jump to matching bracket
set matchpairs+=<:> " Add HTML brackets to pair matching
set matchtime=1     " Tenths of a second to show the matching paren
set cpoptions-=m    " showmatch will wait 0.5s or until a char is typed
set grepprg=rg\ --vimgrep\ $*
set wildignore+=*.so,*~,*/.git/*,*/.svn/*,*/.DS_Store,*/tmp/*


set autowriteall

"let=g:netrw_browsex_viewer='firefox'
let g:netrw_gx="<cWORD>"

