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

" Show line numbers for ruby files
autocmd filetype ruby setl number

" nerdtree
let g:NERDTreeDirArrows=0
" Open NERDTree automatically when vim starts and place it to the right
" au VimEnter *  NERDTree
" au VimEnter *  wincmd w

" ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
let g:rubycomplete_load_gemfile = 1
let g:rubycomplete_gemfile_path = 'Gemfile.aux'
let g:rubycomplete_use_bundler = 1

" toggle outline view with <F8>
nmap <F8> :TagbarToggle<CR>

" close omicomplete scratch previw window
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
