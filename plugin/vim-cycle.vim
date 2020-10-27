autocmd VimEnter * call AddCycleGroup('php', ['this', 'that', 'self'])
autocmd VimEnter * call AddCycleGroup('rest', ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS', 'HEAD', 'PATCH'])
autocmd VimEnter * call AddCycleGroup('php', ['int', 'bool', 'string', 'object', 'callable', 'resource'])

if filereadable(glob("./.local/etc/vim/plugin/vim-cycle.vim"))
  source ./.local/etc/vim/plugin/vim-cycle.vim
endif
