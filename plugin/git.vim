" Fugitive
" --------

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

" → current file history
nnoremap <leader>gl :Glog<CR>

" -> fetch
nnoremap <leader>gf :Gfetch<CR>

" -> merge
nnoremap <leader>gm :Gmerge

" -> push
nnoremap <leader>gp :Gpush origin `git rev-parse --abbrev-ref HEAD`

" -> reset last commit
nnoremap <leader>gr :Git reset HEAD~1<CR>

" GV
" --

nnoremap <leader>gv :GV<CR>
