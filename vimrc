silent! call pathogen#infect()
silent! call pathogen#helptags()





"""""""""""""""""""""""""""""""
" SOLARIZED                   "
"""""""""""""""""""""""""""""""

" Fixing solarized

" IMPORTANT: Uncomment one of the following lines to force
" using 256 colors (or 88 colors) if your terminal supports it,
" but does not automatically use 256 colors by default.
"set t_Co=256
"set t_Co=88
"if ($TERM == 'linux') &&
  "\ filereadable(expand("$HOME/.vim/bundle/guicolorscheme/guicolorscheme.vim"))
  " Use the guicolorscheme plugin to makes 256-color or 88-color
  " terminal use GUI colors rather than cterm colors.
  "runtime! plugin/guicolorscheme.vim
  "set background=dark
  "GuiColorScheme solarized
"else
  " For 8-color 16-color terminals or for gvim, just use the
  " regular :colorscheme command.
  "let g:solarized_termcolors=256
  "set t_Co=16
  "set background=dark
  "colorscheme solarized
"endif




let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized


set modifiable

let g:UltiSnipsUsePythonVersion = 2

set et!

""""""""""""""""""""""""""""""""""""""
" General Configuration              "
""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

"Automatically reload .vimrc if it changes
autocmd! bufwritepost .vimrc source %

"syntax on
" INTERACTIONS "
""""""""""""""""

" → leader is set to comma, faster to find
let mapleader = ","

" → Using the escape key to go out of insert mode is tedious
imap kj <ESC>




" INTERFACE "
"""""""""""""

" Displaying line numbers
set number

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

""""""""""""""""""""""""""""""""""""""
" Ack                                "
""""""""""""""""""""""""""""""""""""""

" → Bringing :Ack up
nnoremap <leader>f :Ack<space>


""""""""""""""""""""""""""""""""""""""
" NERDTree                           "
""""""""""""""""""""""""""""""""""""""

" → Opening/Closing NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>


""""""""""""""""""""""""""""""""""""""
" Fugitive                           "
""""""""""""""""""""""""""""""""""""""

" → git status
nnoremap <leader>gs :Git status -s<CR>

" → git blame
nnoremap <leader>gb :Gblame<CR>

" → git commit
nnoremap <leader>gc :Gcommit<CR>

" → git diff
nnoremap <leader>gd :Gdiff<CR>


