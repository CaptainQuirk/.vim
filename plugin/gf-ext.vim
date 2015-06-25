if has("autocmd") && (match(system('uname -s'), 'Darwin') < 0)
  call gf_ext#add_handler('\.pdf$', "!evince")
else

endif

