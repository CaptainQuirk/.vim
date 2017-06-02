" Languages
" ---------

" Javascript
let g:syntastic_javascript_checkers = [ 'jscs', 'jshint' ]

" PHP
let g:syntastic_php_checkers = [ 'php' ]

" Yaml
let g:syntastic_yaml_checkers = [ 'js-yaml' ]

" Twig
let g:syntastic_twig_checkers = [ 'twiglint' ]


" Behavior
" --------

let g:syntastic_aggregate_errors = 1

let g:syntastic_error_symbol = '⛔ '
let g:syntastic_style_error_symbol = '❌ '
let g:syntastic_warning_symbol ='🔥'
let g:syntastic_style_warning_symbol = '⚠️ '
