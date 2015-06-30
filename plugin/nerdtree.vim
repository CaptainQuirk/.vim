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

" → Find current file in tree
nnoremap <leader>m :NERDTreeFind<CR>


