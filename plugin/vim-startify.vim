" VIM STARTIFY "
""""""""""""""""

function! s:list_commits()
  let git = 'git -C '. getcwd()
  let commits = systemlist(git .' log --oneline | head -n10')
  let git = 'G'. git[1:]
  return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "'. git .' show ". matchstr(v:val, "^\\x\\+") }')
endfunction

" Lists to be shown
let g:startify_lists = [
  \ { 'header': [' MRU '. getcwd()], 'type': 'dir' },
  \ { 'header': [' Commits'], 'type': function('s:list_commits') },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ { 'type': 'commands', 'header': [' Commands'] },
\]

" Use unicode character to draw fortune cookie
let g:startify_fortune_use_unicode = 1

" Try and get the vcs root for opened file or bookmark
let g:startify_change_to_vcs_root = 0

let g:startify_custom_header = [
    \'',
    \'',
    \'                █▀▀ █▀▀█ █▀▀█ ▀▀█▀▀ █▀▀█ ░▀░ █▀▀▄ █▀▀█ █░░█ ░▀░ █▀▀█ █░█',
    \'                █░░ █▄▄█ █░░█ ░░█░░ █▄▄█ ▀█▀ █░░█ █░░█ █░░█ ▀█▀ █▄▄▀ █▀▄',
    \'                ▀▀▀ ▀░░▀ █▀▀▀ ░░▀░░ ▀░░▀ ▀▀▀ ▀░░▀ ▀▀▀█ ░▀▀▀ ▀▀▀ ▀░▀▀ ▀░▀',
    \'',
    \"                                                       Can't get messier",
\]
