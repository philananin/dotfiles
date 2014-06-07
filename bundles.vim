set nocompatible		" incompatibile with legacy vi
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
autocmd vimenter * if !argc() | NERDTree | endif
nmap <silent> <leader>q :NERDTreeToggle<CR>

Plugin 'kien/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1

Plugin 'edkolev/tmuxline.vim'
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'c'    : ['#(whoami)', '#(uptime | cud -d " " -f 1,2,3)'],
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'x'    : '#(date)',
      \'y'    : ['%R', '%a', '%Y'],
      \'z'    : '#H'}

Plugin 'airblade/vim-gitgutter'
Plugin 'tomtom/tcomment_vim'

" themes
Plugin 'baskerville/bubblegum'
Plugin 'philananin/seastone.vim'
Plugin 'gerw/vim-HiLinkTrace'
set background=dark
colorscheme seastone

" javascript
Plugin 'pangloss/vim-javascript'
Plugin 'JSON.vim'
Plugin 'moll/vim-node'

" scala
Plugin 'derekwyatt/vim-scala'

" python
Plugin 'davidhalter/jedi-vim'
