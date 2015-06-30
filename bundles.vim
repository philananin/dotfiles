set nocompatible		" incompatibile with legacy vi
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/syntastic'

Plugin 'kien/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_show_hidden = 1

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

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'airblade/vim-gitgutter'
Plugin 'Align'
Plugin 'rking/ag.vim'

" themes
Plugin 'baskerville/bubblegum'
Plugin 'philananin/seastone.vim'
Plugin 'gerw/vim-HiLinkTrace'

" javascript
Plugin 'pangloss/vim-javascript'
Plugin 'JSON.vim'
Plugin 'moll/vim-node'

" scala
Plugin 'derekwyatt/vim-scala'

" python
Plugin 'davidhalter/jedi-vim'
Plugin 'hynek/vim-python-pep8-indent'

" general lisp
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'luochen1990/rainbow'

" clojure
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'

" scheme
Plugin 'sjl/tslime.vim'
let g:tslime_ensure_trailing_newlines = 1
let g:tslime_normal_mapping = '<leader>t'
let g:tslime_visual_mapping = '<leader>t'
let g:tslime_vars_mapping = '<leader>T'

" rust
Plugin 'wting/rust.vim'
