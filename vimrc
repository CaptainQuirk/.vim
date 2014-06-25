silent! call pathogen#infect()
silent! call pathogen#helptags()


" Friendly kitty welcome
echom ">^.^<"


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



set et!

""""""""""""""""""""""""""""""""""""""
" General Configuration              "
""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

"Automatically reload .vimrc if it changes
autocmd! bufwritepost ~/.vim/vimrc source ~/.vimrc

au BufNewFile,BufRead *.ctp set filetype=php.html

" Some file types should wrap their text
function! s:setupWrapping()
  set wrap
  set linebreak
  set textwidth=72
  set nolist
endfunction

if has("autocmd")
" Make sure all mardown files have the correct filetype set and setup wrapping
  autocmd BufRead,BufNewFile *.md,*.markdown,*.mdown,*.mkd,*.mkdn,*.txt set ft=markdown
  "autocmd FileType markdown call s:setupWrapping()
endif

"syntax on

set history=10000

" INTERACTIONS "
""""""""""""""""

" → leader is set to comma, faster to find
let mapleader = ","


" BEHAVIOR "
""""""""""""

" → Deleting with backspace in a more user-friendly way
set backspace=indent,eol,start
" → Using the escape key to go out of insert mode is tedious
imap kj <ESC>


" FILE HANDLING "
"""""""""""""""""

" → Do not use swap files
set noswapfile

" → Cakephp files are treated as php files
autocmd BufRead,BufNewFile *.ctp set filetype=php


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
nnoremap <leader>f :set hlsearch! hlsearch?<CR>


" INTERFACE "
"""""""""""""

" Displaying line numbers
set number

" Displaying ruler
set ruler

" No wrapping
set nowrap


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


" UTILITIES "
"""""""""""""

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

""""""""""""""""""""""""""""""""""""""
" Ack                                "
""""""""""""""""""""""""""""""""""""""

" → Bringing :Ack up
nnoremap <leader>a :Ack<space>


""""""""""""""""""""""""""""""""""""""
" NERDTree                           "
""""""""""""""""""""""""""""""""""""""

" → Opening NERDTree from the start, even with no
" file opened in vim, while not getting focus
autocmd VimEnter * exe 'NERDTree' | wincmd l 

" → Shows hidden files and folders by default
let NERDTreeShowHidden=1

" → Light everything up
let NERDChristmasTree=1

" → Opening/Closing NERDTree, mirroring existing tree if it exists
"   in another tab
nnoremap <leader>n :NERDTreeToggle<CR> :NERDTreeMirror<CR>


""""""""""""""""""""""""""""""""""""""
" Fugitive                           "
""""""""""""""""""""""""""""""""""""""

" → git status
nnoremap <leader>gs :Gstatus<CR>

" → git blame
nnoremap <leader>gb :Gblame<CR>

" → git commit
nnoremap <leader>gc :Gcommit<CR>

" → git diff
nnoremap <leader>gd :Gdiff<CR>


""""""""""""""""""""""""""""""""""""""
" CtrlP                              "
""""""""""""""""""""""""""""""""""""""

" → Searching for files in folder with .git
" as a root reference if it exists
nnoremap <leader>pf :CtrlP<CR>

" → Searching in buffers
nnoremap <leader>pb :CtrlPMRU<CR>

" → Searching in tags
nnoremap <leader>pt :CtrlPBufTag<CR>

""""""""""""""""""""""""""""""""""""""
" W3m                                "
""""""""""""""""""""""""""""""""""""""

nnoremap <leader>w :W3mTab

let g:w3m#homepage = "https://duckduckgo.com/"


""""""""""""""""""""""""""""""""""""""
" UltiSnips                          "
""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsUsePythonVersion = 2
nnoremap <leader>u :UltiSnipsEdit<CR>


""""""""""""""""""""""""""""""""""""""
" EasyTags                           "
""""""""""""""""""""""""""""""""""""""

let g:easytags_auto_highlight=0
let g:easytags_dynamic_files=1
let g:easytags_by_filetype='~/.vimtagsft'
let g:ctrlp_mruf_max=25
let g:ctrlp_by_filename=1
let g:ctrlp_buftag_types = {'css':'--language-force=css --css-types=citm','javascript':'--language-force=javascript --javascript-types=fv',}


""""""""""""""""""""""""""""""""""""""
" Zencoding                          "
""""""""""""""""""""""""""""""""""""""

"let g:user_zen_leader_key = '<C-i>'


""""""""""""""""""""""""""""""""""""""
" Vim rooter                         "
""""""""""""""""""""""""""""""""""""""

let g:rooter_change_directory_for_non_project_files = 1


""""""""""""""""""""""""""""""""""""""
" Gf-ext                             "
""""""""""""""""""""""""""""""""""""""


call gf_ext#add_handler('\.pdf$', "!evince")
