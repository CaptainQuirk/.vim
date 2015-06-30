

"""""""""""""""""
" Moving around "
"""""""""""""""""

" → reload vimrc
nmap <leader>m :source $MYVIMRC<cr>

" → Open vimrc
nmap <leader>ev :vsplit $MYVIMRC<cr>

" → Open my todo list
nmap <leader>et :e ~/.vim/todos.md<cr>

" → Open my practice list
nmap <leader>ep :e ~/.vim/practice.md<cr>

" Move by display line, not real line
nnoremap  <buffer> <silent> k gk
nnoremap  <buffer> <silent> j gj
nnoremap  <buffer> <silent> 0 g0
nnoremap  <buffer> <silent> $ g$
imap kj <ESC>

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
