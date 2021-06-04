" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/vimfiles/plugged')

" Make sure you use single quotes

Plug 'ludovicchabant/vim-gutentags'

Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'gaalcaras/ncm-R'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

Plug 'mileszs/ack.vim'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'

Plug 'simnalamburt/vim-mundo'
Plug 'rhysd/accelerated-jk'

"Plug 'tyru/caw.vim'

Plug 'tpope/vim-repeat'
Plug 'terryma/vim-expand-region'
Plug 'easymotion/vim-easymotion'
Plug 'svermeulen/vim-cutlass'
Plug 'svermeulen/vim-yoink'
Plug 'svermeulen/vim-subversive'

"Plug 'ncm2/ncm2-ultisnips'
"Plug 'svermeulen/ncm2-yoink'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


  Plug 'vim-airline/vim-airline'
"  Plug 'vim-airline/vim-airline-themes'
 Plug 'tpope/vim-fugitive'
 Plug 'tpope/vim-surround'
 Plug 'tpope/vim-scriptease'
"  Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-signify'

 "Plug 'vim-scripts/SQLUtilities'
 "Plug 'vim-scripts/Align'

" Initialize plugin system
call plug#end()


