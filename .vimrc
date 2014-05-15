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

set background=dark
colorscheme seastone

"" NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
nmap <silent> <leader>q :NERDTreeToggle<CR>

"" Ctrl-P
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

"" Airline
let g:airline_powerline_fonts = 1

"" Tmuxline
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'c'    : ['#(whoami)', '#(uptime | cud -d " " -f 1,2,3)'],
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'x'    : '#(date)',
      \'y'    : ['%R', '%a', '%Y'],
      \'z'    : '#H'}
