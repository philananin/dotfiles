source ~/.vim/bundles.vim " load Vundle bundles

"" general
set tags=./tags;$HOME " walk up to ~ to find tags
set showcmd			" show incomplete commands
set hlsearch			" highlight search matches
set ignorecase			" search is case insensitive
set smartcase			" ...unless a capital letter is present

"" formatting
set nowrap			" don't wrap lines
set textwidth=0 " disable max insert width
set tabstop=4
set shiftwidth=4	" a tab is 4 spaces
set expandtab			" use spaces, not tabs

"" visual
set number        " display line numbers
set rnu " line numbers are relative
set novisualbell " no blinking
set noerrorbells " no noise
set cursorline " highlight current line
set cc=80         " highlight column 80
set list " display unprintable chars

let mapleader=","
