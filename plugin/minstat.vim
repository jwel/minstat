" get the git branch 
function! GitBranchName()
  let l:brnch = substitute(system("git rev-parse --abbrev-ref HEAD 2>/dev/null"), '\n', '', '')
  return strlen(l:brnch)>0?l:brnch:''
endfunction

function! CurByteAsHex()
    let l:c = char2nr(matchstr(getline('.'),'\%'.col('.').'c.'))
    return printf('0x%04x',l:c)
endfunction

set statusline=

" git branch name
set statusline+=%#PmenuSel#
set statusline+=\ 
if has("gui_running")
  set statusline+=
else
  " nicer looking for term vim
  set statusline+=⛕
endif
set statusline+=\ %{GitBranchName()}\ 

" file path
set statusline+=%#LineNr#
set statusline+=\ %F

" some file status as applicable
set statusline+=%m
set statusline+=%r
set statusline+=%h

set statusline+=%= " begin right align

" line and column
set statusline+=%#PmenuSbar#
set statusline+=\ %l
set statusline+=:
set statusline+=%c\ 

" percent of file
set statusline+=%#Normal#
set statusline+=\ %p%%

" byte code of character under cursor in hex
set statusline+=%#NonText#
set statusline+=\ %{CurByteAsHex()}

" buffer number
set statusline+=%#NonText#
set statusline+=\ [%n]
set statusline+=\ 

" always show the status line
set laststatus=2
