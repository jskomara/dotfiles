"""""""""""""""""""""""""""""""""""""""
"Auto
"""""""""""""""""""""""""""""""""""""""
"Automatically cd into the directory that the file is in
autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

"Automatically remove trailing whitespace in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

"""""""""""""""""""""""""""""""""""""""
"Colors
"""""""""""""""""""""""""""""""""""""""
set t_Co=256
set background=dark
syntax on
colorscheme inkpot

"""""""""""""""""""""""""""""""""""""""
"various, misc
"""""""""""""""""""""""""""""""""""""""
set nocompatible
"Show commands
set showcmd
"Auto indent
set autoindent
"Highlight search results
set hlsearch
"Enable mouse
set mouse=a
"Enable line numbers
set nu
"Show cursor
set ruler
"Smart char casing
set smartcase
"Spacing
set shiftwidth=2
set softtabstop=4
set smarttab
set expandtab
"Show doc title
set title

