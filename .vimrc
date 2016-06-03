set nocompatible

" file type detection
filetype off

" syntax highlighting
syntax on

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
set autoindent " automatically indent on `enter` key.
filetype plugin indent on

" configure search and replace
set hlsearch
set incsearch
set noignorecase
set nowrapscan

" configure appearance
set ruler " show current line, column and percentage of total file size
set number " show line numbers
set cursorline " show current line

" misc
set wrap
set eol " append newline (ASCII 10) when saving file
set scrolloff=5
set sidescroll=10
set whichwrap=b,s,<,>,[,]
set listchars=tab:>-,trail:-
set iskeyword=@,48-57,192-255,-
set cmdheight=1

" imap def{TAB} def ():<ESC>3ha - why that doesn't work?
nnoremap expy o```python<ENTER># python<ENTER>```<ESC><S-o>
nnoremap exbash o```bash<ENTER># bash<ENTER>```<ESC><S-o>
nnoremap exjava o```java<ENTER>// java<ENTER>```<ESC><S-o>
nnoremap exscala o```scala<ENTER>// scala<ENTER>```<ESC><S-o>
nnoremap experl o```perl<ENTER># perl<ENTER>```<ESC><S-o>
nnoremap exc o```c<ENTER>// c<ENTER>```<ESC><S-o>
