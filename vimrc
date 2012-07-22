"" general
set nocompatible		" incompatibile with legacy vi
call pathogen#infect()
call pathogen#helptags()
set history=256 " remember lots
set timeoutlen=250 " time to wait after <esc>
set tags=./tags;$HOME " walk up to ~ to find tags
set encoding=utf-8
set showcmd			" show incomplete commands
set hlsearch			" highlight search matches
set incsearch			" incremental search
set ignorecase			" search is case insensitive
set smartcase			" ...unless a capital letter is present

"" formatting
set nowrap			" don't wrap lines
set textwidth=0 " disable max insert width
set tabstop=2
set shiftwidth=2	" a tab is 2 spaces
set expandtab			" use spaces, not tabs
set smarttab " smarter tab levels
set backspace=indent,eol,start	" backspace through everything in insert mode
nnoremap <esc> :noh<return><esc>  " esc also clears search buffer (removes highlighting)
syntax on " enable sytax highlighting
filetype plugin indent on	" auto detect filetype

"" visual
set number        " display line numbers
set showmatch " show matching brackets
set novisualbell " no blinking
set noerrorbells " no noise
set cursorline " highlight current line
set cc=80         " highlight column 80
set list " display unprintable chars
set listchars=tab:\ ·,eol:¬
set listchars+=trail:·
set listchars+=extends:»,precedes:«
set background=dark
colorscheme Tomorrow-Night-Bright

"" Quick reload/edit for vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"" Plugins

"" NERDTree
autocmd VimEnter * NERDTree  
autocmd VimEnter * wincmd p
nmap <silent> <leader>q :NERDTreeToggle<CR>

"" Tagbar
nmap <silent> <leader>t :TagbarToggle<CR>

"" Ctrl-P
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

"" Minibufexpl - use <C-[hjkl]> for window nav
let g:miniBufExplMapWindowNavVim = 1

"" slimv
let g:lisp_rainbow=1 " rainbow brackets in lisp

"" powerline
set laststatus=2  " always show statusline
let Powerline_symbols = 'fancy'
