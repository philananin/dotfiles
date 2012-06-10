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

"" NERDTree
autocmd vimenter * if !argc() | NERDTree | endif  " open NERDTree if no files specified
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " close vim if it is the last buffer open
nmap <silent> <leader>q :NERDTreeToggle<CR>

set autochdir " automatically set current directory to the current file

"" Quick reload/edit for vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"" Tagbar
nmap <silent> <leader>t :TagbarToggle<CR>
