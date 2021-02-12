set encoding=utf-8

syntax on
set backspace=2

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/ListToggle'
"Plugin 'jeaye/color_coded'
Plugin 'rhysd/vim-clang-format'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-dispatch'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'majutsushi/tagbar'
"Plugin 'kien/ctrlp.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bogado/file-line'
Plugin 'martinda/Jenkinsfile-vim-syntax'
"Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'embear/vim-localvimrc'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" turn line numbers on
set number
" highlight matching braces
set showmatch
" Turn tabs into spaces
set expandtab
" SEARCH
set hlsearch
" Highlight current line
set cursorline

" Highlight unwanted spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
let g:lt_height = 10

" Configure clang-format
let g:clang_format#detect_style_file = 1
let g:clang_format#auto_format = 1
let g:clang_format#command = "/opt/local/bin/clang-format"

" Configure ctags
let g:tagbar_ctags_bin = "/opt/local/bin/ctags"
let g:tagbar_ctags_options = ["/Users/qdi/Projects/isocpp/gcc/libstdc++-v3/myopts.cfn"]

" Smarter tab line
let g:airline#extensions#tabline#enabled = 1

if has('gui_running')
  set background=light
else
  set background=dark
endif
let g:solarized_termcolors=256
colorscheme solarized
" Toggle background
call togglebg#map("<F5>")

" Localvimrc
let g:localvimrc_ask = 0

" Folding in vim
"set foldmethod=marker
"set foldmethod=indent
set foldmethod=syntax
