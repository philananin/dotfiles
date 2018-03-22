set nocompatible
call plug#begin('~/.vim/plugged')

Plug 'gmarik/vundle'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/syntastic'
let g:syntastic_javascript_checkers = ['eslint']
Plug 'mtscout6/syntastic-local-eslint.vim'

Plug 'kien/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_show_hidden = 1

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts=1
let g:airline_theme='ravenpower'

Plug 'edkolev/tmuxline.vim'
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '%R',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W'],
      \'y'    : '#(whoami)',
      \'z'    : '#H'}

Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/Align'
Plug 'rking/ag.vim'
Plug 'wincent/terminus'

" themes
Plug 'chriskempson/base16-vim'
Plug 'gerw/vim-HiLinkTrace'

" javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'vim-scripts/JSON.vim', { 'for': 'json' }
Plug 'moll/vim-node', { 'for': 'javascript' }

" scala
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }

" python
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }

" general lisp
Plug 'guns/vim-sexp', { 'for': ['clojure', 'scheme'] }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': ['clojure', 'scheme'] }
Plug 'luochen1990/rainbow', { 'for': ['clojure', 'scheme'] }

" clojure
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" scheme
Plug 'sjl/tslime.vim', { 'for': 'scheme' }
let g:tslime_ensure_trailing_newlines = 1
let g:tslime_normal_mapping = '<leader>t'
let g:tslime_visual_mapping = '<leader>t'
let g:tslime_vars_mapping = '<leader>T'

" YouCompleteMe
function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py --clang-completer
  endif
endfunction

Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
let g:ycm_autoclose_preview_window_after_completion = 1

call plug#end()
