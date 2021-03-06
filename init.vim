if &compatible | set nocompatible | endif

" let &termencoding = &encoding
" set encoding=utf-8


filetype plugin indent on

" remove all `autocmd`s
autocmd!

" VARIABLES
runtime! config/variables.vim

" PACKAGES
runtime! config/packages.vim

" SETTINGS 
runtime!  config/filetype.vim config/mappings.vim config/allkey.vim config/functions.vim


" MODULES
runtime! config/modules/**/*.vim config/languages/**/*.vim config/plugins/**/*.vim




