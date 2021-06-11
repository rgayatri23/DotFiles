syntax on
set noerrorbells
set tabstop=4 
set softtabstop=4
set expandtab
set shiftwidth=4
set smartindent
set nu
"set nowrap
set ignorecase 
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

"set colorcolumn=120
"highlight ColorColumn ctermbg=0 guibg=grey

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'flazz/vim-colorschemes'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'

call plug#end()

colorscheme gruvbox
"colorscheme molokai
set background=dark

" Ignores git dir during cntrl-p searches.
let g:ctrlp_user_command = ['.git/']
" Don't cache for cntrl-p (said to be faster).
let g:cntrlp_use_caching = 0

" My leader key is the space-bar
let mapleader = " "

" Rules on how you want to NERDTREE to split open your files.
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

" Let YCM server be found by vimrc. Needs full path
let g:ycm_global_ycm_extra_conf='/Users/rgayatri/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'


