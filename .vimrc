" TODO: Check if `:help defaults.vim` is better than what we have here.

set nocompatible
set encoding=utf-8
set term=builtin_ansi

filetype on
syntax on

" We're not as memory-limited.
set noswapfile

" Make <BS>, CTRL-W, CTRL-U work in insert mode.
set backspace=eol,start,indent

" Please use spaces, not <Tab>.
set expandtab

" Keep indentation when starting a line in the current scope.
set autoindent

" Indent by 2 spaces when starting a line with a new scope.
set shiftwidth=2

" widgets
set ruler
set number

" search
set hlsearch
set incsearch
set nowrapscan

set scrolloff=5

" Stay in sync with disk as much as possible.
set autoread
set autowriteall

set wildmenu
