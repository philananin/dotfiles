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

"" Other
set number        " line numbers
call pathogen#infect()
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
