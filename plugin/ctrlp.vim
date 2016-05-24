" → Searching for files in folder with .git
" as a root reference if it exists
nnoremap <leader>pf :CtrlP<CR>

" → Searching in buffers
nnoremap <leader>pb :CtrlPMRU<CR>

" → Searching in tags
nnoremap <leader>pt :CtrlPBufTag<CR>

" → Searching in cmds
nnoremap <leader>pc :CtrlPCmdPalette<CR>

" → 100 results
let g:ctrlp_match_window = 'results:100'
let g:ctrlp_custom_ignore = '\v[\/](build|Resources|node_modules)$'

if (match(system('uname -s'), 'Darwin') >= 0)
  let g:ctrlp_buftag_ctags_bin = '/usr/local/bin/ctags'
endif

let g:ctrlp_mruf_relative = 1

let g:ctrlp_extensions = [ 'cmd-palette' ]
