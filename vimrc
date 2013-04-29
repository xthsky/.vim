""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: xthsky
"
" Sections: 
"   -> General
"   -> VIM user interface
"   -> Colors and Fonts
"   -> Text, tab and indent related
"
"   -> Omni complete functions
"   -> JavaScript section
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible             " be iMproved
filetype off                 " required by Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" original repos on github
Bundle 'Lokaltog/vim-powerline'
Bundle 'ap/vim-css-color'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'jnwhiteh/vim-golang'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
let g:syntastic_javascript_checkers=['jshint']
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tsaleh/vim-matchit'
Bundle 'maksimr/vim-jsbeautify'
map <c-f> :call JsBeautify()<cr>
Bundle 'majutsushi/tagbar'
Bundle 'gregsexton/gitv'

filetype plugin indent on    " required by Vundle

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=256     " 保留历史记录

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("win32")
    source $VIMRUNTIME/mswin.vim
    set guioptions-=m
    set guioptions-=T
    set guioptions-=L
    autocmd vimenter * if !argc() | cd d:\dev | endif
    autocmd GUIEnter * simalt ~x
elseif has("gui_macvim")
    set anti
    set guifont=Monaco:h13
    set guioptions-=T
endif

set number

set incsearch
set mouse=a

set laststatus=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme desert
syntax enable


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent      " 开启自动缩进
set smartindent

set tabstop=4       " tab长度
set shiftwidth=4    " 自动缩进的长度
set expandtab       " 以空格代替tab
set smarttab        " 针对expandtab，不用按4次Backspace来删1个tab

set fdm=marker

set fencs=utf-8,gbk
