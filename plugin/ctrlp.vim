" → 100 results
let g:ctrlp_match_window = 'results:100'
let g:ctrlp_custom_ignore = '\v[\/](node_modules)$'

if (match(system('uname -s'), 'Darwin') >= 0)
  let g:ctrlp_buftag_ctags_bin = '/usr/local/bin/ctags'
endif

let g:ctrlp_mruf_relative = 1


" Mappings
"""""""""""

" → Searching for files in folder with .git
" as a root reference if it exists
nnoremap <leader>pf :CtrlP<CR>

" → Searching in buffers
nnoremap <leader>pb :CtrlPMRU<CR>

" → Searching in tags
nnoremap <leader>pt :CtrlPBufTag<CR>

" EXTENSIONS "
""""""""""""""

let g:ctrlp_extensions = [ 'cmd-palette', 'history', 'modified', 'branches', 'unicode' ]

" cmd-palette
""""""""""""""

" → Searching in cmds
nnoremap <leader>pc :CtrlPCmdPalette<CR>

" history
""""""""""

" → Searching in command history
nnoremap <leader>ph :CtrlPCmdHistory<CR>

" → Searching in command history
nnoremap <leader>ps :CtrlPSearchHistory<CR>

" branches
"""""""""""

nnoremap <leader>pgb :CtrlPBranches<CR>
nnoremap <leader>pgm :CtrlPModified<CR>

" unicode
"""""""""

nnoremap <leader>pu :CtrlPUnicode<CR>
