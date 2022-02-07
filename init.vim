syntax on
set noerrorbells
set tabstop=5 
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
set undodir=~/.config/nvim/undodir
" Undofile.
set undofile
" incremental search
set incsearch
" highlight search
set hlsearch
" highlight matching braces
set showmatch

"set colorcolumn=121
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
"Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'rhysd/vim-clang-format'
Plug 'vimwiki/vimwiki'

call plug#end()


colorscheme PaperColor
"colorscheme gruvbox
"colorscheme darkZ
set background=dark

" Ignores git dir during cntrl-p searches.
let g:ctrlp_user_command = ['.git/']
" Don't cache for cntrl-p (said to be faster).
let g:cntrlp_use_caching = 0

" my leader key is the space-bar
let mapleader = " "

" Rules on how you want to NERDTREE to split open your files.
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

"" Let YCM server be found by vimrc. Needs full path
"set encoding=utf-8
"let g:ycm_global_ycm_extra_conf='/global/homes/r/rgayatri/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
"let g:loaded_youcompleteme = 1
"" YCM commands
"nnoremap <silent> <leader>gd : YcmCompleter GoTo<CR>
"nnoremap <silent> <leader>gf : YcmCompleter FixIt<CR>

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

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

" Configure clang-format
let g:clang_format#detect_style_file = 1
let g:clang_format#auto_format = 0
let g:clang_format#command = "/usr/common/software/llvm/8.0.1/bin/clang-format"
nnoremap <leader>f :ClangFormat<CR>
nnoremap <leader>fd :ClangFormatAutoDisable<CR>

" Set backspace functionality
set backspace=indent,eol,start

" For Tagbar
nmap <F8> :TagbarToggle<CR>

" Trying powerline once again
set rtp+=/global/u1/r/rgayatri/.local/cori/3.8-anaconda-2020.11/lib/python3.8/site-packages/powerline/bindings/vim
set rtp+=/global/u1/r/rgayatri/.local/cori/3.8-anaconda-2020.11/lib/python3.8/site-packages/powerline/bindings/nvim

" Buffer mappings
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bd :bd<CR>

" Commands for vimwiki
filetype plugin on
set nocompatible

" create vimwiki dir in home path. Set its syntax to markdown and extention to
" .md
let g:vimwiki_list = [{'path':'~/vimwiki','syntax':'markdown','ext':'md'}]
"let g:vimwiki_ext2syntax = {'.md':'markdown':'.markdown':'markdown':'.mdown':'makrdown'}

" Makes vimwiki markdown links as [text](text.md) instead of [text](text)
" Useful when the vimwiki files to be read by other markdown editors
let g:vimwiki_markdown_link_ext = 1
let g:markdown_folding = 1

