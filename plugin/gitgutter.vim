"""""""""""""
" FUNCTIONS "
"""""""""""""

" Ask for confirmation before calling gitgutter's revert hunk function
function! RevertHunk()
  let choice = confirm("Do you really want to unstage this hunk ?", "&yes\n&no")
  if choice == 1
    call gitgutter#revert_hunk()
  endif
endfunction


"""""""""""""""
" SETTINGS    "
"""""""""""""""

" Setting diff signs to same unicode circle char
let g:gitgutter_sign_added              = '●'
let g:gitgutter_sign_modified           = '●'
let g:gitgutter_sign_removed            = '●'
let g:gitgutter_sign_removed_first_line = '●'
let g:gitgutter_sign_modified_removed   = '●'

" Setting realtime update
let g:gitgutter_eager    = 1
let g:gitgutter_realtime = 1

" Setting maximum number of signs displayed
let g:gitgutter_max_signs = 1000

""""""""""""""""
" MAPPINGS     "
""""""""""""""""

" Remapping Prev and Next hunk jump
nnoremap <leader>> :GitGutterNextHunk<CR>
nnoremap <leader>< :GitGutterPrevHunk<CR>

" Remapping revert hunk to ask for confirmation
nnoremap <leader>hr :call RevertHunk()<CR>
