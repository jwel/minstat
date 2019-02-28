# minstat.vim
A minimal status bar
* includes buffer number
* depends only on vim-fugitive for showing branch or commit if detached head
* show current byte as formatted hex

## General format of status line
* Left aligned: branch symbol | git branch | Filepath[file statuses]
* Right aligned: line:col percent% [buf num]

## Branch symbol
* ⛕  (unicode 0x26D5) as the branch symbol
