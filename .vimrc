source ~/.vundle

" Set colorscheme
set background=dark
colorscheme elflord

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set expandtab 	      " Use speces intead of tabs
set tabstop=2 shiftwidth=2 softtabstop=2        " Make a tab 2 spaces

" Remove trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e
set wrap
set linebreak
" note trailing space at end of next line
set showbreak=>\ \ \

