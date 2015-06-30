
" → reload vimrc
nmap <leader>m :call custom#Reload()<cr>


" → reload vimrc
nmap <leader>m :source $MYVIMRC<cr>

" → Open vimrc
nmap <leader>ev :tabe $MYVIMRC<cr>

" → Open my todo list
nmap <leader>et :tabe ~/.vim/todos.md<cr>

" → Open my practice list
nmap <leader>ep :tabe ~/.vim/practice.md<cr>

" Move by display line, not real line
nnoremap  <buffer> <silent> k gk
nnoremap  <buffer> <silent> j gj
nnoremap  <buffer> <silent> 0 g0
nnoremap  <buffer> <silent> $ g$

"→ Going out of insert mode
imap kj <ESC>

" → Going out of insert mode and saving
imap kjw <ESC>:w<CR>

" → Going out of insert mode, saving and quitting
imap kjwq <ESC>:wq<CR>

nnoremap <leader>f :set hlsearch! hlsearch?<CR>
nmap n nzz
nmap N Nzz


" UTILITIES "
"""""""""""""

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q
