"" general
set nocompatible		" incompatibile with legacy vi
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

"" visual
set number        " display line numbers
set rnu " line numbers are relative
set showmatch " show matching brackets
set novisualbell " no blinking
set noerrorbells " no noise
set cursorline " highlight current line
set cc=80         " highlight column 80
set list " display unprintable chars
set listchars=tab:\ ·,eol:¬
set listchars+=trail:·
set listchars+=extends:»,precedes:«

"" Quick reload/edit for vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"" Plugins
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'vim-ruby/vim-ruby'
Bundle 'mattn/zencoding-vim'
Bundle 'scrooloose/syntastic'
Bundle 'garbas/vim-snipmate'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'honza/snipmate-snippets'

"" syntax
Bundle 'pangloss/vim-javascript'
Bundle 'JSON.vim'
Bundle 'duganchen/vim-soy'

"" themes
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/vim-tomorrow-theme'
set background=dark
colorscheme Tomorrow-Night-Bright

"" NERDTree
Bundle 'scrooloose/nerdtree'
autocmd VimEnter * NERDTree  
autocmd VimEnter * wincmd p
nmap <silent> <leader>q :NERDTreeToggle<CR>

"" Tagbar
Bundle 'majutsushi/tagbar'
nmap <silent> <leader>t :TagbarToggle<CR>

"" Ctrl-P
Bundle 'kien/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

"" Minibufexpl
Bundle 'fholgado/minibufexpl.vim'
let g:miniBufExplMapWindowNavVim = 1 " use <C-[hjkl]> for window nav

"" slimv
Bundle 'slimv.vim'
let g:lisp_rainbow=1 " rainbow brackets in lisp

"" powerline
Bundle 'Lokaltog/vim-powerline'
set laststatus=2  " always show statusline
let Powerline_symbols = 'fancy'

filetype plugin indent on	" auto detect filetype
