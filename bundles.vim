set nocompatible
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'                     " comment stuff easily
Plug 'tpope/vim-repeat'                         " enable . repeating for some plugins
Plug 'tpope/vim-speeddating'                    " enable <C-a> and <C-x> on dates
Plug 'tpope/vim-vinegar'                        " enhance netrw
Plug 'tpope/vim-unimpaired'                     " mappings around brackets
Plug 'tpope/vim-fugitive'                       " git integration
Plug 'vim-airline/vim-airline'                  " airline bar underneath vim pane
Plug 'vim-airline/vim-airline-themes'
Plug 'machakann/vim-sandwich'                   " improve quoting/parenthesizing
let g:airline_powerline_fonts=1
let g:airline_theme='ravenpower'
Plug 'edkolev/tmuxline.vim'                     " synchronise airline with tmux display
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_preset = {
  \'a'    : '#S',
  \'b'    : '%R',
  \'win'  : ['#I', '#W'],
  \'cwin' : ['#I', '#W'],
  \'y'    : '#(whoami)',
  \'z'    : '#H'}
Plug 'wincent/terminus'                         " improved terminal integration
Plug 'christoomey/vim-tmux-navigator'           " seamless navigation between vim splits and tmux panes
Plug 'airblade/vim-gitgutter'                   " show line git diff status in gutter
Plug 'vim-scripts/Align'                        " align statements on characters
Plug 'neoclide/coc.nvim', {'branch': 'release'} " code completion
Plug 'chriskempson/base16-vim'                  " base16 theme support
let base16colorspace=256
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " fuzzy finder
Plug 'pangloss/vim-javascript', { 'for': 'javascript' } " better js indentation and syntax
Plug 'elzr/vim-json', { 'for': 'json' }                 " better json syntax
Plug 'moll/vim-node', { 'for': 'javascript' }           " tools for node development

call plug#end()
