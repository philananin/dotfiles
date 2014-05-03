"" general
set nocompatible		" incompatibile with legacy vi
set tags=./tags;$HOME " walk up to ~ to find tags
set showcmd			" show incomplete commands
set hlsearch			" highlight search matches
set ignorecase			" search is case insensitive
set smartcase			" ...unless a capital letter is present

"" formatting
set nowrap			" don't wrap lines
set textwidth=0 " disable max insert width
set tabstop=2
set shiftwidth=2	" a tab is 2 spaces
set expandtab			" use spaces, not tabs

"" visual
set number        " display line numbers
set rnu " line numbers are relative
set novisualbell " no blinking
set noerrorbells " no noise
set cursorline " highlight current line
set cc=80         " highlight column 80
set list " display unprintable chars

"" Plugins
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-sensible'

""Bundle 'scrooloose/syntastic'

"" syntax
Bundle 'pangloss/vim-javascript'
Bundle 'JSON.vim'
Bundle 'derekwyatt/vim-scala'

"" themes
Bundle 'baskerville/bubblegum'
set background=dark
colorscheme bubblegum

"" NERDTree
Bundle 'scrooloose/nerdtree'
autocmd vimenter * if !argc() | NERDTree | endif
nmap <silent> <leader>q :NERDTreeToggle<CR>

"" Ctrl-P
Bundle 'kien/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

Bundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1

Bundle 'edkolev/tmuxline.vim'
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'c'    : ['#(whoami)', '#(uptime | cud -d " " -f 1,2,3)'],
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'x'    : '#(date)',
      \'y'    : ['%R', '%a', '%Y'],
      \'z'    : '#H'}

Bundle 'airblade/vim-gitgutter'
