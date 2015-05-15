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
let g:solarized_termtrans=1
set t_Co=256

if has("gui_running")
  set background=light
else
  set background=dark
endif

syntax on
colorscheme solarized


set modifiable



set et!

""""""""""""""""""""""""""""""""""""""
" General Configuration              "
""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

"Automatically reload .vimrc if it changes
autocmd! bufwritepost ~/.vim/vimrc source ~/.vimrc

""""""""
" Help "
""""""""

" jump to links with CR
"noremap <buffer> <CR> <C-]>

"""""""""""""""""
" Moving around "
"""""""""""""""""

" Move by display line, not real line
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

""""""""""""""""""""""
" File type settings "
""""""""""""""""""""""

" → Css autocomplete
autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255 
autocmd FileType ctp set iskeyword=@,48-57,_,-,?,!,192-255 

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

set history=10000

" INTERACTIONS "
""""""""""""""""

" → leader is set to comma, faster to find
let mapleader = ","


" → reload vimrc
nmap <leader>m :source $MYVIMRC<cr>

" → Open vimrc
nmap <leader>ev :vsplit $MYVIMRC<cr>

" → Open my todo list
nmap <leader>et :e ~/.vim/todos.md<cr>

" → Open my practice list
nmap <leader>ep :e ~/.vim/practice.md<cr>



" BEHAVIOR "
""""""""""""

" → Deleting with backspace in a more user-friendly way
set backspace=indent,eol,start
" → Using the escape key to go out of insert mode is tedious
imap kj <ESC>

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
nmap n nzz
nmap N Nzz

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

" → Disabling cursor blink and turning it to a beam
" rather than a block
"if has("autocmd") && !has("mac")
if has("autocmd") && (match(system('uname -s'), 'Darwin') < 0)
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
elseif (match(system('uname -s'), 'Darwin') >= 0)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


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

" → stage current file
nnoremap <leader>ga :Gwrite<CR>

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

" → 100 results
let g:ctrlp_match_window = 'results:100'
let g:ctrlp_custom_ignore = '\v[\/](build|Resources|node_modules)$'

if (match(system('uname -s'), 'Darwin') >= 0)
  let g:ctrlp_buftag_ctags_bin = '/usr/local/bin/ctags'
endif

""""""""""""""""""""""""""""""""""""""E"
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

let g:easytags_auto_highlight=1
let g:easytags_file='./.vimtags'
let g:easytags_auto_update=1
let g:ctrlp_mruf_max=25
let g:ctrlp_by_filename=1
let g:ctrlp_buftag_types = {'css':'--language-force=css --css-types=citm','javascript':'--language-force=javascript --javascript-types=fv',}


""""""""""""""""""""""""""""""""""""""
" Emmet                              "
""""""""""""""""""""""""""""""""""""""

let g:user_emmet_leader_key = '<C-i>'


""""""""""""""""""""""""""""""""""""""
" Vim rooter                         "
""""""""""""""""""""""""""""""""""""""

let g:rooter_change_directory_for_non_project_files = 1


""""""""""""""""""""""""""""""""""""""
" Gf-ext                             "
""""""""""""""""""""""""""""""""""""""


if has("autocmd") && (match(system('uname -s'), 'Darwin') < 0)
  call gf_ext#add_handler('\.pdf$', "!evince")
else

endif


""""""""""""""""""""""""""""""""""""
" gitgutter                        "
"""""""""""""""""""""""""""""""""""

" Setting diff signs to same unicode circle char
let g:gitgutter_sign_added = '●'
let g:gitgutter_sign_modified = '●'
let g:gitgutter_sign_removed = '●'
let g:gitgutter_sign_removed_first_line = '●'
let g:gitgutter_sign_modified_removed = '●'
