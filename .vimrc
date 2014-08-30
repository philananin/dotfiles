source ~/.vim/bundles.vim       " load Vundle bundles

if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

set t_Co=16                    " 16 color terminal
set background=dark
colorscheme seastone

" general
set tags=./tags;$HOME          " walk up to ~ to find tags
set showcmd                    " show incomplete commands
set incsearch                  " incremental search
set hlsearch                   " highlight search matches
set ignorecase                 " search is case insensitive
set smartcase                  " ...unless a capital letter is present
set splitright                 " split to the right by default
set splitbelow                 " split below by default
set complete-=i                " don't scan included files for completion
set timeoutlen=300             " wait 300ms for key combinations
set autoread                   " auto reload file if it has changed elsewhere
set fileformats+=mac           " consider mac line endings
set history=1000               " remember 1000 commands
set tabpagemax=50              " allow up to 50 tab pages

" formatting
set nowrap                     " don't wrap lines
set autoindent                 " newlines use current indent
set textwidth=0                " no max insert width
set tabstop=4                  " a tab is 4 spaces
set shiftwidth=4               " use 4 spaces when autoindenting
set expandtab                  " always use spaces for tabs
set nrformats-=octal           " don't interpret octal for C-a
set backspace=indent,eol,start " can backspace over everything

" visual
set ruler                      " show line/col number
set showcmd                    " show command in last line of screen
set wildmenu                   " enable command line tab-completion
set laststatus=2               " last window always has status line
set number                     " display line numbers
set relativenumber             " line numbers are relative
set novisualbell               " no blinking
set noerrorbells               " no noise
set cursorline                 " highlight current line
set colorcolumn=80             " highlight column 80
set scrolloff=7                " always show 7 lines under/above current
set sidescrolloff=5            " always show 5 columns left/right of cursor
set display+=lastline          " show as much of last line as possible
set list                       " display whitespace characters (line below)
set listchars=tab:>\ ,trail:·,extends:»,precedes:«,nbsp:+,eol:¬

let mapleader=","              " change <Leader> from \ to ,
noremap \ ,

" leader-l removes search highlighting
nnoremap <Leader>l :nohlsearch<CR><C-L>

" make Y behave like other capitals
nnoremap Y y$
