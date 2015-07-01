syntax on
let mapleader = ","


set modifiable
set laststatus=2
set showtabline=2
set noshowmode
set updatetime=750

" List chars
set list
set listchars=""
set listchars+=trail:·
set listchars+=tab:→\ 
highlight SpecialKey ctermbg=red guibg=red


""""""""""""""""""""""""""""""""""""""
" General Configuration              "
""""""""""""""""""""""""""""""""""""""
filetype plugin indent on


set history=10000


" BEHAVIOR "
""""""""""""

" → Deleting with backspace in a more user-friendly way
set backspace=indent,eol,start

" → Scroll sideways
set sidescroll=1

" → Reload files changed outside vim
set autoread

" → Display extra white space
highlight ExtraWhitespace ctermbg=darkred


" FILE HANDLING "
"""""""""""""""""

" → Do not use swap files
set noswapfile


" SEARCHING "
"""""""""""""

set gdefault
set ignorecase
set smartcase

" With this, the search begins without having
" to press enter
set incsearch

" We want highlighted search but also a way
" to toggle the hightlighting when finished
set hlsearch


" INTERFACE "
"""""""""""""

" Displaying line numbers
set number

" Displaying ruler
set ruler

" No wrapping
set nowrap

" Always show tabline
set showtabline=2

" Higlight current line
set cursorline

" Mark the 80 column
set colorcolumn=80


" ENCODING "
""""""""""""

set encoding=utf-8
set fileencoding=utf-8


" INDENTING "
"""""""""""""

" → Indenting automatically
set autoindent

" → Transform tab key press to space
set expandtab

" → One tab key press equals two space chars
set tabstop=2

" → Automatically shifted lines shift by 2 spaces chars
set shiftwidth=2

" → Round the shift length to a number multiple of shiftwidth
set shiftround

" → Uses shiftwidth to insert what needs to be inserted in front of a line
set smarttab




