if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "recipe"

syntax match recipeTest /\<do\>/
syntax keyword recipeKeyword done
syntax keyword recipeBoolean true false

syntax match recipeVar "\$\<[A-Za-z_]*\>"

syntax match recipeFunction /^\(git\|link\|file\|brew\)/
syntax match recipeComment "\v#.*$"
syntax region recipeString start=/\v"/ end=/\v"/ contains=recipeVar

highlight link recipeKeyword Keyword
highlight link recipeTest Keyword
highlight link recipeFunction Structure
highlight link recipeComment Comment
highlight link recipeString String
highlight link recipeBoolean Todo
highlight link recipeVar Macro
