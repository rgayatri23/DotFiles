syntax on
set noerrorbells
set tabstop=4 
set softtabstop=4
set expandtab
set shiftwidth=4
" indent as much as it can
set smartindent
" set line number
set nu
" Don't wrap the lines at the end
set nowrap
" Does case insensitive search until some letter is capitalized
set ignorecase 
set smartcase
" Don't create swap file. Gets rid of .swp files
set noswapfile
" No backup either
set nobackup
" Maintain an undodir. You have to creat this by yourself
set undodir=~/.vim/undodir
" Undofile.
set undofile
" incremental search
set incsearch
" highlight search
set hlsearch
" highlight matching braces
set showmatch

"set colorcolumn=120
"highlight ColorColumn ctermbg=0 guibg=grey

call plug#begin('~/.vim/plugged')
" Colorscheme
Plug 'gruvbox-community/gruvbox'
" Git plugin
Plug 'tpope/vim-fugitive'
" vim manual
Plug 'vim-utils/vim-man'
" Undotree plugin
Plug 'mbbill/undotree'
" Colorscheme
Plug 'flazz/vim-colorschemes'
" YouCompleteMe - Awesome auto completer
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
set encoding=utf-8
let g:ycm_global_ycm_extra_conf='/Users/rgayatri/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
" YCM commands
nnoremap <silent> <leader>gd : YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf : YcmCompleter FixIt<CR>

" Map commands
" h - window left
nnoremap <leader>h :wincmd h<CR>
" j - window down
nnoremap <leader>j :wincmd j<CR>
" k - window up
nnoremap <leader>k :wincmd k<CR>
" l - window left
nnoremap <leader>l :wincmd l<CR>

" UndoTree
nnoremap <leader>u :UndotreeShow<CR>
" NERDTree
nnoremap <leader>o :NERDTree<CR>

" Folding in vim
"set foldmethod=marker
"set foldmethod=indent
set foldmethod=syntax

