# minstat.vim
My minimal status bar
* clean and nice looking
* includes buffer number
* current git branch without need for fugitive.vim
* no dependencies on other plugins
* show current byte as formatted hex

## General format of status line
* Left aligned: branch symbol | git branch | Filepath[file statuses]
* Right aligned: line:col percent% [buf num]

## Branch symbol
* ⛕  (unicode 0x26D5) as the branch symbol for non-gui mode
*  (unicode 0xE0A0) as the branch symbol for gui mode as typical in powerline/airline

## Installation on vim8
mkdir -p ~/.vim/pack/foo/start
cd ~/.vim/pack/foo/start
git clone https://github.com/jwel/minstat

## Known good experience
* .vimrc
    ```vim
    set encoding=utf-8
    set t_Co=256
    colorscheme seoul256
    let g:airline_powerline_fonts = 1
    if has("gui_running")
      set guifont=Source\ Code\ Pro\ for\ Powerline
    endif
    ```
