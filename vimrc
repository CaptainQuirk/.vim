" Pathogen loads all the plugin
" plugin specific settings are in separate files
" in the plugin directory
silent! call pathogen#infect()
silent! call pathogen#helptags()


" Colorscheme
" -----------

let g:solarized_termcolors=256
let g:solarized_termtrans=1
set t_Co=256

if has("gui_running")
  set background=light
else
  set background=dark
endif
colorscheme solarized


" Settings
" --------

syntax on
let mapleader = ","


set modifiable
set laststatus=2
set showtabline=2
set noshowmode
set updatetime=100

" Modeline for specific files
set modeline
set modelines=5

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

set wildmenu
set switchbuf=useopen,usetab
set splitright

set completeopt+=longest

" allow local vimrc files
set exrc

" BEHAVIOR "
""""""""""""

" → Deleting with backspace in a more user-friendly way
set backspace=indent,eol,start

" → Scroll sideways
set sidescroll=1

set scrolloff=4

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

" Hide line numbers
set nonumber

" always reserve space for the signcolumn
set signcolumn=yes

" Remove any SignColumn colors
highlight clear SignColumn

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


" FOLDING "
"""""""""""

set foldlevelstart=999
set foldmethod=manual
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo


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


" PRINT CODE "
""""""""""""""

set printoptions=portrait:no,header:0,paper:A4


" NOTIFICATIONS "
"""""""""""""""""

set t_vb=
set visualbell

set fileformats=unix,mac,dos

set mouse=a
set nostartofline

set virtualedit=block

" SYSTEM CLIPBOARD "
""""""""""""""""""""

if (match(system('uname -s'), 'Darwin') < 0)
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" UNDO "
""""""""

set undofile
set undodir=~/.vim/undo


" Interface
" ---------

" → Disabling cursor blink and turning it to a beam
" rather than a block
if has("autocmd") && (match(system('uname -s'), 'Darwin') < 0)
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam > /dev/null 2>&1"
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block > /dev/null 2>&1"
  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam > /dev/null 2>&1"
elseif (match(system('uname -s'), 'Darwin') >= 0)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


" Autocommands
" ------------

" Automatically reload .vimrc if it changes
autocmd! bufwritepost ~/.vim/vimrc source ~/.vimrc

""""""""""""""""""""""
" File type settings "
""""""""""""""""""""""

" → Keyword override : in css and ctp files, consider a '-' separated
" expression to be a word (and addressable via a text object)
autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255
autocmd FileType ctp set iskeyword=@,48-57,_,-,?,!,192-255

" → Cakephp files are treated as php files
autocmd BufRead,BufNewFile *.ctp set filetype=php


" Mappings
" --------

""""""""""
" RELOAD "
""""""""""

""""""""""""""
" QUICK OPEN "
""""""""""""""

" → Open vimrc
nmap <leader>ev :tabe $MYVIMRC<cr>

" → Open my todo list
nmap <leader>et :tabe ~/.vim/todos.md<cr>

" → Open my practice list
nmap <leader>ep :tabe ~/.vim/practice.md<cr>


"""""""""""""""""
" MOVING AROUND "
"""""""""""""""""

" Move by display line, not real line
nnoremap  <buffer> <silent> k gk
nnoremap  <buffer> <silent> j gj
nnoremap  <buffer> <silent> 0 g0
nnoremap  <buffer> <silent> $ g$


"""""""""""""""
" INSERT MODE "
"""""""""""""""

"→ Going out of insert mode
imap kj <ESC>

" → Going out of insert mode and saving
imap kjw <ESC>:w<CR>

" → Going out of insert mode, saving and quitting
imap kjwq <ESC>:wq<CR>


""""""""""""""""
" COMMAND MODE "
""""""""""""""""

cnoremap <C-j> <down>
cnoremap <C-k> <up>
cnoremap <C-A> <Home>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>


"""""""""""""""
" SEARCHING   "
"""""""""""""""

" → Toggling search highlighting (hlsearch)
nnoremap <leader>f :set hlsearch! hlsearch?<CR>

" → When moving to the next search result, center it vertically
nmap n nzz

" → When moving to the previous search result, center it vertically
nmap N Nzz


"""""""""""""
" UTILITIES "
"""""""""""""

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q
