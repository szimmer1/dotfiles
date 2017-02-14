""""""""""""""""
" pre-settings "
""""""""""""""""
execute pathogen#infect()
syntax on
set nocompatible              " be iMproved, required
filetype plugin indent on     " REQUIRED
set number

""""""""""""""""
" color settings 
""""""""""""""""
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized

" for ctags
set tags=./tags,tags;

" Ctrl P
let g:ctrlp_custom_ignore = 'pyc\|DS_Store'

""""""""""""""""""""""""""""""""""
" Syntastic recommended settings "
""""""""""""""""""""""""""""""""""

" force some file types
autocmd BufNewFile,BufRead *.[ch] setlocal filetype=c
autocmd BufNewFile,BufRead *.[ch]pp setlocal filetype=cpp
autocmd BufNewFile,BufRead *.py setlocal filetype=python
autocmd BufNewFile,BufRead *.js setlocal filetype=javascript
autocmd BufNewFile,BufRead *.rb setlocal filetype=ruby
autocmd BufNewFile,BufRead *.json setlocal filetype=json
" autocmd BufNewFile,BufRead *.scala setlocal filetype=scala

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Explicit syntastic filetype checkers
" let g:syntastic_scala_checkers = ['scalac']  " default is ['fsc', 'scalac'], both will be run doubling lint time

let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [],'passive_filetypes': [] }

nnoremap <C-w>s :SyntasticCheck<CR> 

""""""""""
" mappings 
""""""""""

" wrapped line control
:nmap j gj
:nmap k gk

" redo
:nmap r <C-r>

" ctags
" TODO: why doesn't this work

nnoremap <C-Space> <C-]>

"""""""""""""""""""
" filetype-specific
"""""""""""""""""""

" indent html/css/js by 2 instead of 4
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType scss setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType sass setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2

" haskell should also use 2 instead of 4
autocmd FileType haskell setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType lhaskell setlocal shiftwidth=2 tabstop=2 softtabstop=2

" c/c++ should use 2 instead of 4
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType c setlocal shiftwidth=2 tabstop=2 softtabstop=2

" matlab should use 2 instead of 4
autocmd FileType matlab setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Protect large files from sourcing and other overhead.
" Files become read only
if !exists("my_auto_commands_loaded")
  let my_auto_commands_loaded = 1
  " Large files are > 10M
  " Set options:
  " eventignore+=FileType (no syntax highlighting etc
  " assumes FileType always on)
  " noswapfile (save copy of file)
  " bufhidden=unload (save memory when other file is viewed)
  " buftype=nowritefile (is read-only)
  " undolevels=-1 (no undo possible)
  let g:LargeFile = 1024 * 1024 * 10
  augroup LargeFile
    autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 | else | set eventignore-=FileType | endif
    augroup END
  endif
