""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: xthsky
"
" Sections: 
"   -> General
"   -> VIM user interface
"   -> Colors and Fonts
"   -> Text, tab and indent related
"   -> Moving around, tabs and buffers
"
"   -> Omni complete functions
"   -> JavaScript section
"
"
" Plugins_Included:
" 
"    > pathogen
"      Snippets for many languages (similar to TextMate's):
"           info -> :help snipMate
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set history=500     " 保留历史记录

" 自动重新读入
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" When vimrc is edited, reload it
"autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if has("win32")
    "source $VIMRUNTIME/mswin.vim
    "set guioptions-=m
    "set guioptions-=T
    "set guioptions-=L
    "autocmd vimenter * if !argc() | cd d:\dev | endif
    "autocmd GUIEnter * simalt ~x
"elseif has("gui_macvim")
    "set anti
    "set guifont=Monaco:h13
    "set guioptions-=T
"endif

set number

set incsearch
set mouse=a

set statusline=\ [Coding]\ %F%r[%{&fileformat},%{&fileencoding}]\ \ [PWD]\ %{getcwd()}\ %=\ [Cursor]%3l,%3v\ [%P]
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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Use the arrows to something usefull
map <right> :bn<cr>
map <left> :bp<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" pathogen
" @see http://www.vim.org/scripts/script.php?script_id=2332
call  pathogen#infect()

" Enable filetype plugin
filetype plugin on
filetype indent on

" NERDTree
" @see http://www.vim.org/scripts/script.php?script_id=1658
autocmd vimenter * NERDTree
imap <F3> :NERDTreeToggle<cr>
nmap <F3> :NERDTreeToggle<cr>

" Syntastic
let g:syntastic_check_on_open = 1

" Tagbar
nmap <F2> :TagbarToggle<cr>
