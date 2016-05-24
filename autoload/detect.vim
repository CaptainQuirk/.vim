function! detect#GetFiletype()
  if !empty('b:projectionist')
    "let type = projectionist#query('type')
    "let &filetype='javascript.' . type[0][1]
  endif
endfunction
