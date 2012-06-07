set nocompatible		" incompatibile with legacy vi
set encoding=utf-8
set showcmd			" show incomplete commands
filetype indent plugin on	" load filetype plugins + indentation

"" Whitespace
set nowrap			" don't wrap lines
set tabstop=2 shiftwidth=2	" a tab is 2 spaces
set expandtab			" use spaces, not tabs
set backspace=indent,eol,start	" backspace through everything in insert mode

"" Searching
set hlsearch			" highlight matches
set incsearch			" incremental search
set ignorecase			" search is case insensitive
set smartcase			" ...unless a capital letter is present
nnoremap <esc> :noh<return><esc>  " esc also clears search buffer (removes highlighting)

"" Other
set number        " line numbers
call pathogen#infect()
syntax enable
set background=dark
colorscheme solarized
call togglebg#map("<F12>")  " toggle solarized colours using F12

"" Netrw
let g:netrw_liststyle=3   " use tree style for netrw
let g:netrw_browse_split=2  " open files in new window (vertically)
let g:netrw_altv=1 " split window to the right

set autochdir " automatically set current directory to the current file

"" Quick reload/edit for vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
