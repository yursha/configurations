" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'pangloss/vim-javascript'
" call vundle#end()

set nocompatible "vim, not vi

" file type detection
filetype off

" syntax highlighting
syntax off

" don't write junk files
set nobackup " don't create backup `.swp` files
set nowritebackup
set noswapfile

" configure indentation
set backspace=eol,start,indent
set expandtab " replace `tab` with spaces
set tabstop=4
set shiftwidth=4
set list " display EOL markers
set wrapscan
set autoindent " automatically indent on `enter` key.
filetype plugin indent on

" configure search and replace
set hlsearch
set ignorecase
set incsearch

" configure appearance
set ruler " show current line, column and percentage of total file size
set number " show line numbers
set cursorline " show current line

" misc
set eol " appen line feed (ASCII 10) when saving file
set scrolloff=5
set nowrap
set sidescroll=10
set whichwrap=b,s,<,>,[,]
set listchars=tab:>-,trail:-
set iskeyword=@,48-57,192-255,-
set cmdheight=1
