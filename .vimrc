"" General
set nocompatible
set number		" Show line numbers
set wrap linebreak
set linebreak		" Break lines at word (requires Wrap lines)
" set showbreak=+++	" Wrap-broken line prefix
" set textwidth=100	" Line wrap (number of cols)
set showmatch		" Highlight matching brace
set visualbell		" Use visual bell (no beeping)
set nofixendofline      " Don't add newline to EOF by default
 
set hlsearch		" Highlight all search results
set smartcase		" Enable smart-case search
set ignorecase		" Always case-insensitive
set incsearch		" Searches for strings incrementally
 
set autoindent		" Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set smartindent		" Enable smart-indent
set smarttab		" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
set expandtab           " Insert spaces for tabs

"" Syntax
syntax on
filetype on
filetype plugin indent on
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
 
"" Advanced
set ruler			" Show row and column ruler information
 
set undolevels=1000		" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

set cursorline
set showmatch
set hlsearch
set history=1000
set smartcase
set showmode
