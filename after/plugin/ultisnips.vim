if !exists('g:did_UltiSnips_plugin')
  finish
endif

augroup ultisnips_custom
  autocmd!
  autocmd User ProjectionistActivate silent! call snippet#InsertSkeleton()
  autocmd BufNewFile * silent! call snippet#InsertSkeleton()
augroup END
