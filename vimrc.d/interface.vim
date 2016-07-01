" → Disabling cursor blink and turning it to a beam
" rather than a block
if has("autocmd") && (match(system('uname -s'), 'Darwin') < 0)
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam > /dev/null 2>&1"
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block > /dev/null 2>&1"
  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam > /dev/null 2>&1"
elseif (match(system('uname -s'), 'Darwin') >= 0)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


