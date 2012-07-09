set nocompatible		" incompatibile with legacy vi
call pathogen#infect()
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
syntax enable
set laststatus=2  " always show statusline
set cc=80         " colour column 80
set background=dark
colorscheme solarized
call togglebg#map("<F12>")  " toggle solarized colours using F12

"" NERDTree
autocmd VimEnter * NERDTree  
autocmd VimEnter * wincmd p
nmap <silent> <leader>q :NERDTreeToggle<CR>

set autochdir " automatically set current directory to the current file

"" Quick reload/edit for vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"" Tagbar
nmap <silent> <leader>t :TagbarToggle<CR>

"" Highlight current line
set cursorline

"" Ctrl-P
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

"" Tags
set tags=tags;  " search for tags up directories until root

"" Minibufexpl - use <C-[hjkl]> for window nav
let g:miniBufExplMapWindowNavVim = 1

